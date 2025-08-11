import 'package:flutter/material.dart';
import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:intl/intl.dart';

class CacheManagementPage extends StatefulWidget {
  final String appId;
  final CodemagicClient client;

  const CacheManagementPage({
    super.key,
    required this.appId,
    required this.client,
  });

  @override
  State<CacheManagementPage> createState() => _CacheManagementPageState();
}

class _CacheManagementPageState extends State<CacheManagementPage> {
  List<Cache> _caches = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadCaches();
  }

  Future<void> _loadCaches() async {
    setState(() => _isLoading = true);
    
    try {
      final result = await widget.client.getApplicationCaches(widget.appId);
      if (result.wasSuccessful && result.data != null) {
        setState(() => _caches = result.data!.caches);
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error loading caches: ${result.error}')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading caches: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _deleteAllCaches() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete All Caches'),
        content: const Text(
          'Are you sure you want to delete all caches? This action cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    try {
      final result = await widget.client.deleteApplicationCaches(widget.appId);
      if (result.wasSuccessful) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(result.data?.message ?? 'Cache deletion started')),
          );
          _loadCaches(); // Reload to show updated state
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error deleting caches: ${result.error}')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error deleting caches: $e')),
        );
      }
    }
  }

  Future<void> _deleteCache(Cache cache) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Cache'),
        content: Text(
          'Are you sure you want to delete the cache for workflow "${cache.workflowId}"?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    try {
      final result = await widget.client.deleteApplicationCache(widget.appId, cache.id);
      if (result.wasSuccessful) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(result.data?.message ?? 'Cache deletion started')),
          );
          _loadCaches(); // Reload to show updated state
        }
      } else {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error deleting cache: ${result.error}')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error deleting cache: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_caches.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.storage, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No caches found',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        // Header with actions
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                'Total Caches: ${_caches.length}',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: _deleteAllCaches,
                icon: const Icon(Icons.delete_sweep, color: Colors.red),
                label: const Text('Delete All', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
        
        // Cache list
        Expanded(
          child: RefreshIndicator(
            onRefresh: _loadCaches,
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _caches.length,
              itemBuilder: (context, index) {
                final cache = _caches[index];
                return _buildCacheCard(cache);
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCacheCard(Cache cache) {
    final dateFormat = DateFormat('MMM dd, yyyy HH:mm');
    
    return Card(
      child: ListTile(
        leading: const Icon(Icons.storage, size: 32, color: Colors.blue),
        title: Text(
          'Workflow: ${cache.workflowId}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Size: ${_formatFileSize(cache.size)}'),
            Text('Last Used: ${dateFormat.format(cache.lastUsed)}'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () => _deleteCache(cache),
          tooltip: 'Delete cache',
        ),
      ),
    );
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}