import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/foundation.dart';

class BuildsProvider extends ChangeNotifier {
  final CodemagicClient client;
  
  BuildsProvider(this.client);

  final List<Build> _builds = [];
  bool _isLoading = false;
  int _skip = 0;
  final int _limit = 20;
  bool _hasMoreBuilds = true;
  String? _appId;
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
    _appId = null;
    _workflowId = null;
    _branch = null;
    _tag = null;
    notifyListeners();
  }

  Future<void> loadBuilds({
    String? appId,
    String? workflowId,
    String? branch,
    String? tag,
    bool refresh = false,
  }) async {
    if (_isLoading) return;

    // If parameters changed or refresh requested, reset the pagination
    if (refresh || 
        appId != _appId || 
        workflowId != _workflowId || 
        branch != _branch || 
        tag != _tag) {
      _builds.clear();
      _skip = 0;
      _hasMoreBuilds = true;
      _appId = appId;
      _workflowId = workflowId;
      _branch = branch;
      _tag = tag;
    }

    _isLoading = true;
    notifyListeners();

    try {
      final result = await client.getBuilds(
        skip: _skip,
        appId: _appId,
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
      appId: _appId,
      workflowId: _workflowId,
      branch: _branch,
      tag: _tag,
    );
  }

  Future<void> refresh() async {
    await loadBuilds(
      appId: _appId,
      workflowId: _workflowId,
      branch: _branch,
      tag: _tag,
      refresh: true,
    );
  }
}