import 'package:cached_network_image/cached_network_image.dart';
import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/material.dart';
import 'widgets/application_card.dart';
import 'widgets/build_card.dart';
import 'pages/application_details_page.dart';
import 'pages/build_details_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codemagic Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  CodemagicClient? client;
  final List<Build> builds = [];
  final Map<String, Application> apps = {};
  final TextEditingController textEditingController = TextEditingController();
  late TabController _tabController;
  bool _isLoading = false;
  int _skip = 0;
  final int _limit = 20;
  bool _hasMoreBuilds = true;
  
  final ScrollController _buildsScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _buildsScrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _buildsScrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_buildsScrollController.position.pixels ==
            _buildsScrollController.position.maxScrollExtent &&
        !_isLoading &&
        _hasMoreBuilds &&
        client != null) {
      _loadMoreBuilds();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Codemagic Manager'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Applications', icon: Icon(Icons.apps)),
            Tab(text: 'Recent Builds', icon: Icon(Icons.build)),
          ],
        ),
      ),
      body: Column(
        children: [
          // Auth key input
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: textEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your Codemagic API token',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: onFetch,
                  child: _isLoading 
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Connect'),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          
          // Content tabs
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildApplicationsTab(),
                _buildBuildsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildApplicationsTab() {
    final uniqueApps = apps.values.toList();
    
    if (uniqueApps.isEmpty && !_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.apps, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No applications found',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Connect with your API token to see applications',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: onFetch,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: uniqueApps.length,
        itemBuilder: (context, index) {
          final app = uniqueApps[index];
          return ApplicationCard(
            application: app,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ApplicationDetailsPage(
                    application: app,
                    client: client!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildBuildsTab() {
    if (builds.isEmpty && !_isLoading) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.build, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No builds found',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Connect with your API token to see recent builds',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: onFetch,
      child: ListView.builder(
        controller: _buildsScrollController,
        padding: const EdgeInsets.all(16),
        itemCount: builds.length + (_isLoading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index >= builds.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            );
          }

          final build = builds[index];
          final app = apps[build.appId];
          
          return BuildCard(
            buildData: build,
            application: app,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BuildDetailsPage(
                    build: build,
                    application: app!,
                    client: client!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void onStart() async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      if (builds.isEmpty) {
        throw Exception('No builds available');
      }
      
      final appId = builds.first.appId;
      final wId = builds.first.workflowId!;
      final branch = builds.first.branch;
      final result = await client!.startBuild(appId, wId, branch: branch);
      if (result.wasSuccessful) {
        print('Success!');
        onFetch();
      } else {
        print('Something went wrong: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void onCancel() async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      if (builds.isEmpty) {
        throw Exception('No builds available');
      }
      
      final buildId = builds.first.id;
      final result = await client!.cancelBuild(buildId);
      if (result.wasSuccessful) {
        print('Success!');
        onFetch();
      } else {
        print('Something went wrong: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> onFetch() async {
    try {
      final authKey = textEditingController.text;
      if (authKey.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter your API token')),
        );
        return;
      }
      
      setState(() => _isLoading = true);
      
      client ??= CodemagicClient(
        apiUrl: 'https://api.codemagic.io',
        authKey: authKey,
      );
      
      final result = await client!.getBuilds(skip: 0);
      if (result.wasSuccessful) {
        print(
          'Success! Fetched ${result.data?.applications.length}'
          ' apps and ${result.data?.builds.length} builds',
        );
        
        setState(() {
          builds.clear();
          builds.addAll(result.data?.builds ?? []);
          _skip = builds.length;
          _hasMoreBuilds = builds.length >= _limit;
        });
        
        apps.clear();
        // Add applications from the builds response
        for (final app in result.data?.applications ?? <Application>[]) {
          apps[app.id!] = app;
        }
        
        // Fetch missing applications
        final appIds = builds.map((e) => e.appId).toSet();
        for (final id in appIds) {
          if (!apps.containsKey(id)) {
            final app = await client!.getApplication(id);
            if (app.wasSuccessful) {
              apps[id] = app.data!;
            } else {
              print('Failed to fetch app for id $id: ${app.error}');
            }
          }
        }

        setState(() {});
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${result.error}')),
        );
      }
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _loadMoreBuilds() async {
    if (_isLoading || !_hasMoreBuilds || client == null) return;
    
    setState(() => _isLoading = true);
    
    try {
      final result = await client!.getBuilds(skip: _skip);
      if (result.wasSuccessful && result.data != null) {
        final newBuilds = result.data!.builds;
        setState(() {
          builds.addAll(newBuilds);
          _skip = builds.length;
          _hasMoreBuilds = newBuilds.length >= _limit;
        });
        
        // Fetch missing applications for new builds
        final newAppIds = newBuilds.map((e) => e.appId).toSet();
        for (final id in newAppIds) {
          if (!apps.containsKey(id)) {
            final app = await client!.getApplication(id);
            if (app.wasSuccessful) {
              setState(() => apps[id] = app.data!);
            }
          }
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading more builds: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }
}
