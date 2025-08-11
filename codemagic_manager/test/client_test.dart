import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:test/test.dart';

void main() {
  const apiKey = 'API_KEY';
  const appId = 'APP_ID';
  const workflowId = 'WORKFLOW_ID';
  const buildId = 'BUILD_ID';
  const cacheId = 'CACHE_ID';
  const artifactId = 'ARTIFACT_ID';

  group('Existing API methods', () {
    test('returns list of applications for correct api key', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getBuilds();
      print(result);
    });

    test('returns application for correct api key', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getApplication(appId);
      print(result);
    });

    test('starts build for given app id', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.startBuild(appId, workflowId, 'main');
      print(result);
    });

    test('fails to start build for given app id with wrong branch', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.startBuild(appId, workflowId, 'master');
      print(result);
    });

    test('starts and cancels the build for given app id', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.startBuild(appId, workflowId, 'main');
      print(result);
      await Future.delayed(Duration(seconds: 5));
      final cancelResult = await client.cancelBuild('${result.data?.buildId}');
      print(cancelResult);
    });
  });

  group('New Applications API methods', () {
    test('returns list of applications', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getApplications();
      print('Applications: $result');
    });
  });

  group('New Builds API methods', () {
    test('returns specific build', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getBuild(buildId);
      print('Build: $result');
    });

    test('returns builds for application', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getBuildsForApplication(appId);
      print('App builds: $result');
    });
  });

  group('New Artifacts API methods', () {
    test('returns artifact download URL', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getArtifactDownloadUrl(artifactId);
      print('Artifact download URL: $result');
    });
  });

  group('New Caches API methods', () {
    test('returns list of caches for app', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getCaches(appId);
      print('Caches: $result');
    });

    test('returns specific cache for app', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getCache(appId, cacheId);
      print('Cache: $result');
    });

    test('deletes cache for app', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.deleteCache(appId, cacheId);
      print('Delete cache: $result');
    });
  });
}
