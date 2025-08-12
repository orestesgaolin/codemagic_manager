import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/application_details_page.dart';
import 'pages/build_details_page.dart';
import 'providers/builds_provider.dart';
import 'services/secure_storage_service.dart';
import 'widgets/application_card.dart';
import 'widgets/build_card.dart';

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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  CodemagicClient? client;
  BuildsProvider? buildsProvider;
  final Map<String, Application> apps = {};
  final TextEditingController textEditingController = TextEditingController();
  late TabController _tabController;
  bool _isLoading = false;

  final ScrollController _buildsScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _buildsScrollController.addListener(_onScroll);
    _loadSavedApiKey();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _buildsScrollController.dispose();
    super.dispose();
  }

  Future<void> _logout() async {
    await SecureStorageService.deleteApiKey();
    setState(() {
      client = null;
      buildsProvider = null;
      apps.clear();
      textEditingController.clear();
    });
  }

  Future<void> _loadSavedApiKey() async {
    final savedApiKey = await SecureStorageService.getApiKey();
    if (savedApiKey != null && savedApiKey.isNotEmpty) {
      textEditingController.text = savedApiKey;
      await onFetch();
    }
  }

  void _onScroll() {
    if (_buildsScrollController.position.pixels == _buildsScrollController.position.maxScrollExtent &&
        buildsProvider != null &&
        !buildsProvider!.isLoading &&
        buildsProvider!.hasMoreBuilds) {
      _loadMoreBuilds();
    }
  }

  Future<void> _loadMoreBuilds() async {
    try {
      await buildsProvider?.loadMoreBuilds();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading more builds: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BuildsProvider?>.value(
      value: buildsProvider,
      child: Scaffold(
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
                  if (client != null) ...[
                    const SizedBox(width: 8),
                    TextButton(
                      onPressed: _logout,
                      child: const Text('Logout'),
                    ),
                  ],
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
    return Consumer<BuildsProvider?>(
      builder: (context, provider, child) {
        final builds = provider?.builds ?? [];
        final isLoading = provider?.isLoading ?? false;

        if (builds.isEmpty && !isLoading) {
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
          onRefresh: () async {
            try {
              await provider?.refresh();
            } catch (e) {
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error refreshing builds: $e')),
                );
              }
            }
          },
          child: ListView.builder(
            controller: _buildsScrollController,
            padding: const EdgeInsets.all(16),
            itemCount: builds.length + (isLoading ? 1 : 0),
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
      },
    );
  }

  void onStart() async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      final builds = buildsProvider?.builds ?? [];
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
      final builds = buildsProvider?.builds ?? [];
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

      // Save API key securely
      await SecureStorageService.saveApiKey(authKey);

      // Create and setup builds provider
      buildsProvider = BuildsProvider(client!);

      final result = await client!.getBuilds(skip: 0);
      if (result.wasSuccessful) {
        print(
          'Success! Fetched ${result.data?.applications.length}'
          ' apps and ${result.data?.builds.length} builds',
        );

        // Initialize the provider with the initial builds data
        if (result.data?.builds.isNotEmpty == true) {
          await buildsProvider!.loadBuilds(refresh: true);
        }

        apps.clear();
        // Add applications from the builds response
        for (final app in result.data?.applications ?? <Application>[]) {
          apps[app.id] = app;
        }

        // Fetch missing applications
        final builds = buildsProvider!.builds;
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

}
