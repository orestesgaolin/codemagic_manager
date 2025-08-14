import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/builds_provider.dart';
import '../widgets/build_card.dart';
import 'build_details_page.dart';
import 'cache_management_page.dart';

class ApplicationDetailsPage extends StatefulWidget {
  final Application application;
  final CodemagicClient client;

  const ApplicationDetailsPage({
    super.key,
    required this.application,
    required this.client,
  });

  @override
  State<ApplicationDetailsPage> createState() => _ApplicationDetailsPageState();
}

class _ApplicationDetailsPageState extends State<ApplicationDetailsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late BuildsProvider _buildsProvider;

  final ScrollController _buildsScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _buildsProvider = BuildsProvider(widget.client, widget.application.id);
    _loadBuilds();
    _buildsScrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _buildsScrollController.dispose();
    _buildsProvider.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_buildsScrollController.position.pixels == _buildsScrollController.position.maxScrollExtent &&
        !_buildsProvider.isLoading &&
        _buildsProvider.hasMoreBuilds) {
      _loadMoreBuilds();
    }
  }

  Future<void> _loadBuilds() async {
    try {
      await _buildsProvider.loadBuilds(refresh: true);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading builds: $e')),
        );
      }
    }
  }

  Future<void> _loadMoreBuilds() async {
    try {
      await _buildsProvider.loadMoreBuilds();
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
    return ChangeNotifierProvider<BuildsProvider>.value(
      value: _buildsProvider,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.application.appName),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Details', icon: Icon(Icons.info)),
              Tab(text: 'Builds', icon: Icon(Icons.build)),
              Tab(text: 'Cache', icon: Icon(Icons.storage)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildDetailsTab(),
            _buildBuildsTab(),
            CacheManagementPage(
              appId: widget.application.id,
              client: widget.client,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.play_arrow),
          label: const Text('Start Build'),
          onPressed: _showStartBuildDialog,
        ),
      ),
    );
  }

  Widget _buildDetailsTab() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.application.iconUrl?.isNotEmpty == true)
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  widget.application.iconUrl!,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const Icon(Icons.apps, size: 80),
                ),
              ),
            ),
          const SizedBox(height: 16),
          _buildDetailItem('App Name', widget.application.appName),
          _buildDetailItem('App ID', widget.application.id),
          _buildDetailItem('Owner Team', widget.application.ownerTeam),
          if (widget.application.repository != null) ...[
            const SizedBox(height: 16),
            const Text(
              'Repository',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildDetailItem('URL', widget.application.repository!.htmlUrl),
            _buildDetailItem('Default Branch', widget.application.repository!.defaultBranch),
          ],
          if (widget.application.workflows.isNotEmpty) ...[
            const SizedBox(height: 16),
            const Text(
              'Workflows',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...widget.application.workflows.values.map(
              (workflow) => Card(
                child: ListTile(
                  title: Text(workflow.name),
                  subtitle: Text('ID: ${workflow.id}'),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildBuildsTab() {
    return Consumer<BuildsProvider>(
      builder: (context, provider, child) {
        final builds = provider.builds;
        final isLoading = provider.isLoading;

        return RefreshIndicator(
          onRefresh: () async {
            try {
              await provider.refresh();
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
              return BuildCard(
                buildData: build,
                application: widget.application,
                onTap: () {
                  Navigator.of(context).push(
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
          ),
        );
      },
    );
  }

  Future<void> _showStartBuildDialog() async {
    final workflows = widget.application.workflows.values.toList();
    String? selectedWorkflowId = workflows.isNotEmpty ? workflows.first.id : null;
    String? selectedBranch = widget.application.repository?.defaultBranch ?? '';
    final branchController = TextEditingController(text: selectedBranch);
    final Map<String, dynamic> buildParams = {};

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Start New Build'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Workflow'),
                DropdownButton<String>(
                  value: selectedWorkflowId,
                  isExpanded: true,
                  items: workflows
                      .map(
                        (w) => DropdownMenuItem(
                          value: w.id,
                          child: Text(w.name),
                        ),
                      )
                      .toList(),
                  onChanged: (val) {
                    selectedWorkflowId = val;
                    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                    (context as Element).markNeedsBuild();
                  },
                ),
                const SizedBox(height: 16),
                const Text('Branch'),
                TextField(
                  controller: branchController,
                  decoration: const InputDecoration(hintText: 'Branch name'),
                ),
                // Add more build properties here if needed
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await _startBuild(selectedWorkflowId, branchController.text, buildParams);
              },
              child: const Text('Start'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _startBuild(String? workflowId, String branch, Map<String, dynamic> params) async {
    if (workflowId == null || branch.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select workflow and branch.')),
      );
      return;
    }
    try {
      await widget.client.startBuild(
        widget.application.id,
        workflowId,
        branch: branch,
        environment: params['environment'] as Map<String, dynamic>?,
        labels: params['labels'] as List<String>?,
        instanceType: params['instanceType'] as String?,
      );
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Build started successfully!')),
        );
        await _buildsProvider.loadBuilds(refresh: true);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error starting build: $e')),
        );
      }
    }
  }

  Widget _buildDetailItem(String label, String? value) {
    if (value == null || value.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
