import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/foundation.dart';

class BuildsProvider extends ChangeNotifier {
  final CodemagicClient client;
  final String? appId;
  
  BuildsProvider(this.client, this.appId);
  
  BuildsProvider.allApplications(this.client) : appId = null;

  final List<Build> _builds = [];
  bool _isLoading = false;
  int _skip = 0;
  final int _limit = 20;
  bool _hasMoreBuilds = true;
  String? _workflowId;
  String? _branch;
  String? _tag;

  List<Build> get builds => _builds;
  bool get isLoading => _isLoading;
  bool get hasMoreBuilds => _hasMoreBuilds;

  void reset() {
    _builds.clear();
    _skip = 0;
    _hasMoreBuilds = true;
    _workflowId = null;
    _branch = null;
    _tag = null;
    notifyListeners();
  }

  Future<void> loadBuilds({
    String? workflowId,
    String? branch,
    String? tag,
    bool refresh = false,
  }) async {
    if (_isLoading) return;

    // If parameters changed or refresh requested, reset the pagination
    if (refresh || 
        workflowId != _workflowId || 
        branch != _branch || 
        tag != _tag) {
      _builds.clear();
      _skip = 0;
      _hasMoreBuilds = true;
      _workflowId = workflowId;
      _branch = branch;
      _tag = tag;
    }

    _isLoading = true;
    notifyListeners();

    try {
      final result = await client.getBuilds(
        skip: _skip,
        appId: appId,
        workflowId: _workflowId,
        branch: _branch,
        tag: _tag,
      );

      if (result.wasSuccessful && result.data != null) {
        final newBuilds = result.data!.builds;
        _builds.addAll(newBuilds);
        _skip = _builds.length;
        _hasMoreBuilds = newBuilds.length >= _limit;
      } else {
        throw Exception(result.error ?? 'Failed to load builds');
      }
    } catch (e) {
      // Let the UI handle the error
      rethrow;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadMoreBuilds() async {
    if (_isLoading || !_hasMoreBuilds) return;

    await loadBuilds(
      workflowId: _workflowId,
      branch: _branch,
      tag: _tag,
    );
  }

  Future<void> refresh() async {
    await loadBuilds(
      workflowId: _workflowId,
      branch: _branch,
      tag: _tag,
      refresh: true,
    );
  }
}