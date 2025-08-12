import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/artifact_card.dart';

class BuildDetailsPage extends StatefulWidget {
  final Build build;
  final Application application;
  final CodemagicClient client;

  const BuildDetailsPage({
    super.key,
    required this.build,
    required this.application,
    required this.client,
  });

  @override
  State<BuildDetailsPage> createState() => _BuildDetailsPageState();
}

class _BuildDetailsPageState extends State<BuildDetailsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  BuildStatusResponse? _currentStatus;
  bool _isLoadingStatus = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadBuildStatus();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadBuildStatus() async {
    setState(() => _isLoadingStatus = true);

    try {
      final result = await widget.client.getBuildStatus(widget.build.id);
      if (result.wasSuccessful && result.data != null) {
        setState(() => _currentStatus = result.data);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading build status: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoadingStatus = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMM dd, yyyy HH:mm:ss');

    return Scaffold(
      appBar: AppBar(
        title: Text('Build #${widget.build.index}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadBuildStatus,
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Details', icon: Icon(Icons.info)),
            Tab(text: 'Artifacts', icon: Icon(Icons.archive)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildDetailsTab(dateFormat),
          _buildArtifactsTab(),
        ],
      ),
    );
  }

  Widget _buildDetailsTab(DateFormat dateFormat) {
    final build = _currentStatus?.build ?? widget.build;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_isLoadingStatus) const LinearProgressIndicator(),
          const SizedBox(height: 16),

          // Status Card
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _getStatusIcon(build.status),
                      const SizedBox(width: 8),
                      Text(
                        'Status: ${build.status.name.toUpperCase()}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  if (build.startedAt != null) Text('Started: ${dateFormat.format(build.startedAt!)}'),
                  if (build.finishedAt != null) Text('Finished: ${dateFormat.format(build.finishedAt!)}'),
                  if (build.startedAt != null && build.finishedAt != null)
                    Text(
                      'Duration: ${_formatDuration(
                        build.finishedAt!.difference(build.startedAt!),
                      )}',
                    ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Build Info
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Build Information',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  _buildDetailItem('Build ID', build.id),
                  _buildDetailItem('App ID', build.appId),
                  _buildDetailItem('Workflow ID', build.workflow),
                  _buildDetailItem('Branch', build.branch),
                  _buildDetailItem('Tag', build.tag),
                  _buildDetailItem('Instance Type', build.instanceType),
                  _buildDetailItem('Message', build.message),
                  _buildDetailItem('Version', build.version),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Commit Info
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Commit Information',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  _buildDetailItem('SHA', build.commit.hash),
                  _buildDetailItem('Message', build.commit.commitMessage),
                  _buildDetailItem('Author', build.commit.authorName),
                  _buildDetailItem('Author Email', build.commit.authorEmail),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Build Actions
          if (build.buildActions.isNotEmpty)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Build Actions',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    ...build.buildActions.map(
                      (action) => ListTile(
                        leading: const Icon(Icons.play_arrow),
                        title: Text(action.name),
                        subtitle: action.type != null ? Text('Type: ${action.type}') : null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildArtifactsTab() {
    if (widget.build.artefacts.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.archive, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No artifacts available',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: widget.build.artefacts.length,
      itemBuilder: (context, index) {
        final artifact = widget.build.artefacts[index];
        return ArtifactCard(
          artifact: artifact,
          client: widget.client,
        );
      },
    );
  }

  Widget _getStatusIcon(BuildStatus status) {
    Color color = Colors.grey;
    var icon = Icons.help;

    switch (status) {
      case BuildStatus.finished:
        color = Colors.green;
        icon = Icons.check_circle;
        break;
      case BuildStatus.failed:
      case BuildStatus.timeout:
        color = Colors.red;
        icon = Icons.error;
        break;
      case BuildStatus.canceled:
        color = Colors.orange;
        icon = Icons.cancel;
        break;
      case BuildStatus.building:
      case BuildStatus.preparing:
      case BuildStatus.queued:
      case BuildStatus.fetching:
        color = Colors.blue;
        icon = Icons.refresh;
        break;
    }

    return Icon(icon, color: color, size: 24);
  }

  Widget _buildDetailItem(String label, String? value) {
    if (value == null || value.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
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

  String _formatDuration(Duration duration) {
    final hours = duration.inHours;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;

    if (hours > 0) {
      return '${hours}h ${minutes}m ${seconds}s';
    } else if (minutes > 0) {
      return '${minutes}m ${seconds}s';
    } else {
      return '${seconds}s';
    }
  }
}
