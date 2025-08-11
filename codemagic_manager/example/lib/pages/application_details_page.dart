import 'package:flutter/material.dart';
import 'package:codemagic_manager/codemagic_manager.dart';
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

class _ApplicationDetailsPageState extends State<ApplicationDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Build> _builds = [];
  bool _isLoadingBuilds = false;
  int _skip = 0;
  final int _limit = 20;
  bool _hasMoreBuilds = true;
  
  final ScrollController _buildsScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _loadBuilds();
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
        !_isLoadingBuilds &&
        _hasMoreBuilds) {
      _loadMoreBuilds();
    }
  }

  Future<void> _loadBuilds() async {
    if (_isLoadingBuilds) return;
    
    setState(() => _isLoadingBuilds = true);
    
    try {
      final result = await widget.client.getBuilds(
        appId: widget.application.id,
        skip: 0,
      );
      
      if (result.wasSuccessful && result.data != null) {
        setState(() {
          _builds = result.data!.builds;
          _skip = _builds.length;
          _hasMoreBuilds = _builds.length >= _limit;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading builds: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoadingBuilds = false);
      }
    }
  }

  Future<void> _loadMoreBuilds() async {
    if (_isLoadingBuilds || !_hasMoreBuilds) return;
    
    setState(() => _isLoadingBuilds = true);
    
    try {
      final result = await widget.client.getBuilds(
        appId: widget.application.id,
        skip: _skip,
      );
      
      if (result.wasSuccessful && result.data != null) {
        final newBuilds = result.data!.builds;
        setState(() {
          _builds.addAll(newBuilds);
          _skip = _builds.length;
          _hasMoreBuilds = newBuilds.length >= _limit;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading more builds: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoadingBuilds = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.application.appName ?? 'App Details'),
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
            appId: widget.application.id!,
            client: widget.client,
          ),
        ],
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
            ...widget.application.workflows.values.map((workflow) => Card(
                  child: ListTile(
                    title: Text(workflow.name ?? 'Unnamed Workflow'),
                    subtitle: Text('ID: ${workflow.id}'),
                  ),
                )),
          ],
        ],
      ),
    );
  }

  Widget _buildBuildsTab() {
    return RefreshIndicator(
      onRefresh: _loadBuilds,
      child: ListView.builder(
        controller: _buildsScrollController,
        padding: const EdgeInsets.all(16),
        itemCount: _builds.length + (_isLoadingBuilds ? 1 : 0),
        itemBuilder: (context, index) {
          if (index >= _builds.length) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: CircularProgressIndicator(),
              ),
            );
          }

          final build = _builds[index];
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