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

enum ViewMode { builds, applications, artifacts, caches, teams }

class _MyHomePageState extends State<MyHomePage> {
  CodemagicClient? client;
  final List<Build> builds = [];
  final Map<String, Application> apps = {};
  final List<Application> allApplications = [];
  final List<Artifact> artifacts = [];
  final List<Cache> caches = [];
  final List<Team> teams = [];
  final List<TeamMember> teamMembers = [];
  final TextEditingController textEditingController = TextEditingController();
  
  ViewMode currentView = ViewMode.builds;
  String? selectedBuildId;
  String? selectedTeamId;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Codemagic Manager'),
          bottom: TabBar(
            isScrollable: true,
            tabs: const [
              Tab(text: 'Builds'),
              Tab(text: 'Applications'),
              Tab(text: 'Artifacts'),
              Tab(text: 'Caches'),
              Tab(text: 'Teams'),
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
                  if (selectedBuildId != null)
                    ElevatedButton(child: Text('Fetch artifacts'), onPressed: onFetchArtifacts),
                  ElevatedButton(child: Text('Fetch caches'), onPressed: onFetchCaches),
                  ElevatedButton(child: Text('Fetch teams'), onPressed: onFetchTeams),
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
      case ViewMode.artifacts:
        return _buildArtifactsList();
      case ViewMode.caches:
        return _buildCachesList();
      case ViewMode.teams:
        return _buildTeamsList();
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
          onTap: () {
            setState(() {
              selectedBuildId = build.id;
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Selected build ${build.id} for artifacts')),
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
          trailing: app.archived ? Chip(label: Text('Archived')) : null,
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
        );
      },
    );
  }

  Widget _buildArtifactsList() {
    if (selectedBuildId == null) {
      return Center(
        child: Text('Select a build from the Builds tab to view its artifacts'),
      );
    }
    
    return ListView.builder(
      itemCount: artifacts.length,
      itemBuilder: (context, index) {
        final artifact = artifacts[index];
        return ListTile(
          title: Text(artifact.name),
          subtitle: Text('Type: ${artifact.type} | Size: ${_formatBytes(artifact.size)}'),
          leading: Icon(_getArtifactIcon(artifact.type)),
          trailing: Icon(Icons.download),
        );
      },
    );
  }

  Widget _buildCachesList() {
    return ListView.builder(
      itemCount: caches.length,
      itemBuilder: (context, index) {
        final cache = caches[index];
        return ListTile(
          title: Text(cache.label),
          subtitle: Text('Size: ${_formatBytes(cache.size)} | Used: ${cache.usageCount} times'),
          leading: Icon(Icons.storage),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: () => onDeleteCache(cache.id),
          ),
        );
      },
    );
  }

  Widget _buildTeamsList() {
    return ListView.builder(
      itemCount: teams.length,
      itemBuilder: (context, index) {
        final team = teams[index];
        return ExpansionTile(
          title: Text(team.name),
          subtitle: Text('${team.memberCount} members'),
          leading: Icon(Icons.group),
          onExpansionChanged: (expanded) {
            if (expanded) {
              onFetchTeamMembers(team.id);
            }
          },
          children: teamMembers
              .where((member) => selectedTeamId == team.id)
              .map((member) => ListTile(
                    title: Text(member.name),
                    subtitle: Text('${member.email} | ${member.role}'),
                    leading: Icon(Icons.person),
                  ))
              .toList(),
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

  void onFetchArtifacts() async {
    if (selectedBuildId == null) return;
    
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      final result = await client!.getArtifacts(selectedBuildId!);
      if (result.wasSuccessful) {
        print('Success! Fetched ${result.data?.artifacts.length} artifacts');
        artifacts.clear();
        artifacts.addAll(result.data?.artifacts ?? []);
        setState(() {});
      } else {
        print('Failed to fetch artifacts: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void onFetchCaches() async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      final result = await client!.getCaches();
      if (result.wasSuccessful) {
        print('Success! Fetched ${result.data?.caches.length} caches');
        caches.clear();
        caches.addAll(result.data?.caches ?? []);
        setState(() {});
      } else {
        print('Failed to fetch caches: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void onDeleteCache(String cacheId) async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      final result = await client!.deleteCache(cacheId);
      if (result.wasSuccessful) {
        print('Cache deleted successfully');
        onFetchCaches(); // Refresh the list
      } else {
        print('Failed to delete cache: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void onFetchTeams() async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      final result = await client!.getTeams();
      if (result.wasSuccessful) {
        print('Success! Fetched ${result.data?.teams.length} teams');
        teams.clear();
        teams.addAll(result.data?.teams ?? []);
        setState(() {});
      } else {
        print('Failed to fetch teams: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }

  void onFetchTeamMembers(String teamId) async {
    try {
      if (client == null) {
        throw Exception('CodemagicClient is not initialized');
      }
      final result = await client!.getTeamMembers(teamId);
      if (result.wasSuccessful) {
        print('Success! Fetched ${result.data?.members.length} team members');
        teamMembers.clear();
        teamMembers.addAll(result.data?.members ?? []);
        selectedTeamId = teamId;
        setState(() {});
      } else {
        print('Failed to fetch team members: ${result.error}');
      }
    } catch (e) {
      print(e);
    }
  }
}
