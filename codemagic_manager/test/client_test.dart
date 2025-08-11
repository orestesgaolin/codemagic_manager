import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:test/test.dart';

void main() {
  const apiKey = 'API_KEY';
  const appId = 'APP_ID';
  const workflowId = 'WORKFLOW_ID';
  const buildId = 'BUILD_ID';
  const teamId = 'TEAM_ID';
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
    test('returns artifacts for build', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getArtifacts(buildId);
      print('Artifacts: $result');
    });

    test('returns specific artifact', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getArtifact(artifactId);
      print('Artifact: $result');
    });
  });

  group('New Caches API methods', () {
    test('returns list of caches', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getCaches();
      print('Caches: $result');
    });

    test('returns specific cache', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getCache(cacheId);
      print('Cache: $result');
    });

    test('deletes cache', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.deleteCache(cacheId);
      print('Delete cache: $result');
    });
  });

  group('New Teams API methods', () {
    test('returns list of teams', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getTeams();
      print('Teams: $result');
    });

    test('returns specific team', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getTeam(teamId);
      print('Team: $result');
    });

    test('returns team members', () async {
      final client = CodemagicClient(authKey: apiKey);
      final result = await client.getTeamMembers(teamId);
      print('Team members: $result');
    });
  });
}
