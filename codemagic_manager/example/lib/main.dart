import 'package:cached_network_image/cached_network_image.dart';
import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codemagic example',
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

enum ViewMode { builds, applications }

class _MyHomePageState extends State<MyHomePage> {
  CodemagicClient? client;
  final List<Build> builds = [];
  final Map<String, Application> apps = {};
  final List<Application> allApplications = [];
  final TextEditingController textEditingController = TextEditingController();
  
  ViewMode currentView = ViewMode.builds;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Codemagic Manager'),
          bottom: TabBar(
            tabs: const [
              Tab(text: 'Builds'),
              Tab(text: 'Applications'),
            ],
            onTap: (index) {
              setState(() {
                currentView = ViewMode.values[index];
              });
            },
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(hintText: 'AuthKey'),
                ),
              ),
              Wrap(
                spacing: 8.0,
                children: [
                  ElevatedButton(child: Text('Fetch builds'), onPressed: onFetch),
                  ElevatedButton(child: Text('Fetch apps'), onPressed: onFetchApplications),
                  if (builds.length > 0)
                    ElevatedButton(
                      child: Text('Start latest build again'),
                      onPressed: onStart,
                    ),
                  if (builds.length > 0)
                    ElevatedButton(
                      child: Text('Cancel latest build'),
                      onPressed: onCancel,
                    ),
                ],
              ),
              Expanded(child: _buildCurrentView()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentView() {
    switch (currentView) {
      case ViewMode.builds:
        return _buildBuildsList();
      case ViewMode.applications:
        return _buildApplicationsList();
    }
  }

  Widget _buildBuildsList() {
    return ListView.builder(
      itemCount: builds.length,
      itemBuilder: (context, index) {
        final build = builds[index];
        final app = apps[build.appId];
        return ListTile(
          title: Text(build.id),
          subtitle: Text('${app?.appName} | ${build.status}'),
          leading: app?.iconUrl?.isNotEmpty == true
              ? ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: app!.iconUrl!,
                    errorWidget: (_, __, ___) => Icon(Icons.error),
                    placeholder: (_, __) =>
                        ColoredBox(color: Colors.grey),
                  ),
                )
              : null,
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BuildDetailsPage(
                  build: build,
                  application: app,
                  client: client!,
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildApplicationsList() {
    return ListView.builder(
      itemCount: allApplications.length,
      itemBuilder: (context, index) {
        final app = allApplications[index];
        return ListTile(
          title: Text(app.appName),
          subtitle: Text('ID: ${app.id}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (app.archived) Chip(label: Text('Archived')),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          leading: app.iconUrl?.isNotEmpty == true
              ? ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: app.iconUrl!,
                    errorWidget: (_, __, ___) => Icon(Icons.error),
                    placeholder: (_, __) =>
                        ColoredBox(color: Colors.grey),
                  ),
                )
              : Icon(Icons.apps),
          onTap: () {
            Navigator.push(
              context,
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
    );
  }

  IconData _getArtifactIcon(String type) {
    switch (type.toLowerCase()) {
      case 'apk':
      case 'aab':
        return Icons.android;
      case 'ipa':
        return Icons.phone_iphone;
      case 'dmg':
      case 'app':
        return Icons.computer;
      default:
        return Icons.file_present;
    }
  }

  String _formatBytes(int bytes) {
    if (bytes == 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB'];
    int i = (bytes.bitLength - 1) ~/ 10;
    return '${(bytes / (1 << (i * 10))).toStringAsFixed(1)} ${suffixes[i]}';
  }

  void onStart() async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      final appId = builds.first.appId;
      final wId = builds.first.workflowId!;
      final branch = builds.first.branch;
      final result = await client!.startBuild(appId, wId, branch);
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

  void onFetch() async {
    try {
      final authKey = textEditingController.text;
      if (authKey.isEmpty) {
        throw 'AuthKey cannot be empty';
      }
      client ??= CodemagicClient(
        apiUrl: 'https://api.codemagic.io',
        authKey: authKey,
      );
      final result = await client!.getBuilds();
      if (result.wasSuccessful) {
        print(
          'Success! Fetched ${result.data?.applications.length}'
          ' apps and ${result.data?.builds.length} builds',
        );
        builds.clear();
        builds.addAll(result.data?.builds ?? []);
        apps.clear();
        final appIds = builds.map((e) => e.appId).toSet();
        for (final id in appIds) {
          final app = await client!.getApplication(id);
          if (app.wasSuccessful) {
            apps[id] = app.data!;
          } else {
            print('Failed to fetch app for id $id: ${app.error}');
          }
        }

        setState(() {});
      } else {
        print('Something went wrong: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void onFetchApplications() async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      final result = await client!.getApplications();
      if (result.wasSuccessful) {
        print('Success! Fetched ${result.data?.applications.length} applications');
        allApplications.clear();
        allApplications.addAll(result.data?.applications ?? []);
        setState(() {});
      } else {
        print('Failed to fetch applications: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }
}

class BuildDetailsPage extends StatefulWidget {
  final Build build;
  final Application? application;
  final CodemagicClient client;

  const BuildDetailsPage({
    Key? key,
    required this.build,
    this.application,
    required this.client,
  }) : super(key: key);

  @override
  _BuildDetailsPageState createState() => _BuildDetailsPageState();
}

class _BuildDetailsPageState extends State<BuildDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Build Details'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Build Information', style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(height: 16),
                  _buildDetailRow('Build ID', widget.build.id),
                  _buildDetailRow('Status', widget.build.status.toString()),
                  _buildDetailRow('Branch', widget.build.branch),
                  _buildDetailRow('Created', widget.build.createdAt.toString()),
                  if (widget.build.startedAt != null)
                    _buildDetailRow('Started', widget.build.startedAt.toString()),
                  if (widget.build.finishedAt != null)
                    _buildDetailRow('Finished', widget.build.finishedAt.toString()),
                  if (widget.build.workflowId != null)
                    _buildDetailRow('Workflow ID', widget.build.workflowId!),
                  if (widget.application != null)
                    _buildDetailRow('Application', widget.application!.appName),
                ],
              ),
            ),
          ),
          SizedBox(height: 16),
          if (widget.build.artefacts.isNotEmpty) ...[
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Artifacts', style: Theme.of(context).textTheme.headlineSmall),
                    SizedBox(height: 16),
                    ...widget.build.artefacts.map((artifact) => 
                      ListTile(
                        title: Text(artifact.name ?? 'Unknown'),
                        subtitle: Text('Type: ${artifact.type ?? 'Unknown'} | Size: ${_formatBytes(artifact.size ?? 0)}'),
                        leading: Icon(_getArtifactIcon(artifact.type ?? '')),
                        trailing: IconButton(
                          icon: Icon(Icons.download),
                          onPressed: () => _downloadArtifact(artifact),
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
          SizedBox(height: 16),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Commit Information', style: Theme.of(context).textTheme.headlineSmall),
                  SizedBox(height: 16),
                  _buildDetailRow('Commit Hash', widget.build.commit.hash ?? 'Unknown'),
                  _buildDetailRow('Message', widget.build.commit.commitMessage ?? 'No message'),
                  _buildDetailRow('Author', widget.build.commit.authorName ?? 'Unknown'),
                  _buildDetailRow('Email', widget.build.commit.authorEmail ?? 'Unknown'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              '$label:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  IconData _getArtifactIcon(String type) {
    switch (type.toLowerCase()) {
      case 'apk':
      case 'aab':
        return Icons.android;
      case 'ipa':
        return Icons.phone_iphone;
      case 'dmg':
      case 'app':
        return Icons.computer;
      default:
        return Icons.file_present;
    }
  }

  String _formatBytes(int bytes) {
    if (bytes == 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB'];
    int i = (bytes.bitLength - 1) ~/ 10;
    return '${(bytes / (1 << (i * 10))).toStringAsFixed(1)} ${suffixes[i]}';
  }

  void _downloadArtifact(Artefact artifact) async {
    // Note: This would require the artifact ID which might not be available
    // in the current model. This is a placeholder for the functionality.
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Download functionality would be implemented here')),
    );
  }
}

class ApplicationDetailsPage extends StatefulWidget {
  final Application application;
  final CodemagicClient client;

  const ApplicationDetailsPage({
    Key? key,
    required this.application,
    required this.client,
  }) : super(key: key);

  @override
  _ApplicationDetailsPageState createState() => _ApplicationDetailsPageState();
}

class _ApplicationDetailsPageState extends State<ApplicationDetailsPage> {
  List<Build> appBuilds = [];
  List<Cache> appCaches = [];
  bool isLoadingBuilds = false;
  bool isLoadingCaches = false;

  @override
  void initState() {
    super.initState();
    _loadAppBuilds();
    _loadAppCaches();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.application.appName),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Details'),
              Tab(text: 'Builds'),
              Tab(text: 'Caches'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildDetailsTab(),
            _buildBuildsTab(),
            _buildCachesTab(),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailsTab() {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    if (widget.application.iconUrl?.isNotEmpty == true)
                      ClipOval(
                        child: CachedNetworkImage(
                          imageUrl: widget.application.iconUrl!,
                          width: 64,
                          height: 64,
                          errorWidget: (_, __, ___) => Icon(Icons.error, size: 64),
                          placeholder: (_, __) => ColoredBox(color: Colors.grey, child: SizedBox(width: 64, height: 64)),
                        ),
                      )
                    else
                      Icon(Icons.apps, size: 64),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.application.appName,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text('ID: ${widget.application.id}'),
                          if (widget.application.archived)
                            Chip(label: Text('Archived')),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                _buildDetailRow('App ID', widget.application.id),
                if (widget.application.repository != null)
                  _buildDetailRow('Repository', widget.application.repository!.htmlUrl),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBuildsTab() {
    if (isLoadingBuilds) {
      return Center(child: CircularProgressIndicator());
    }

    if (appBuilds.isEmpty) {
      return Center(child: Text('No builds found for this application'));
    }

    return ListView.builder(
      itemCount: appBuilds.length,
      itemBuilder: (context, index) {
        final build = appBuilds[index];
        return ListTile(
          title: Text(build.id),
          subtitle: Text('${build.status} | ${build.branch}'),
          trailing: Text(build.createdAt.toString().split(' ')[0]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BuildDetailsPage(
                  build: build,
                  application: widget.application,
                  client: widget.client,
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildCachesTab() {
    if (isLoadingCaches) {
      return Center(child: CircularProgressIndicator());
    }

    if (appCaches.isEmpty) {
      return Center(child: Text('No caches found for this application'));
    }

    return ListView.builder(
      itemCount: appCaches.length,
      itemBuilder: (context, index) {
        final cache = appCaches[index];
        return ListTile(
          title: Text(cache.label),
          subtitle: Text('Size: ${_formatBytes(cache.size)} | Used: ${cache.usageCount} times'),
          leading: Icon(Icons.storage),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => _deleteCache(cache.id),
          ),
        );
      },
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              '$label:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  String _formatBytes(int bytes) {
    if (bytes == 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB'];
    int i = (bytes.bitLength - 1) ~/ 10;
    return '${(bytes / (1 << (i * 10))).toStringAsFixed(1)} ${suffixes[i]}';
  }

  void _loadAppBuilds() async {
    setState(() {
      isLoadingBuilds = true;
    });

    try {
      final result = await widget.client.getBuildsForApplication(widget.application.id);
      if (result.wasSuccessful) {
        setState(() {
          appBuilds = result.data?.builds ?? [];
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load builds: ${result.error}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading builds: $e')),
      );
    } finally {
      setState(() {
        isLoadingBuilds = false;
      });
    }
  }

  void _loadAppCaches() async {
    setState(() {
      isLoadingCaches = true;
    });

    try {
      final result = await widget.client.getCaches(widget.application.id);
      if (result.wasSuccessful) {
        setState(() {
          appCaches = result.data ?? [];
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load caches: ${result.error}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading caches: $e')),
      );
    } finally {
      setState(() {
        isLoadingCaches = false;
      });
    }
  }

  void _deleteCache(String cacheId) async {
    try {
      final result = await widget.client.deleteCache(widget.application.id, cacheId);
      if (result.wasSuccessful) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Cache deleted successfully')),
        );
        _loadAppCaches(); // Refresh the list
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to delete cache: ${result.error}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error deleting cache: $e')),
      );
    }
  }
}
