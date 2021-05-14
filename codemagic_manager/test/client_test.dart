import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:test/test.dart';

void main() {
  const apiKey = 'API_KEY';
  const appId = 'APP_ID';
  const workflowId = 'WORKFLOW_ID';

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
}
