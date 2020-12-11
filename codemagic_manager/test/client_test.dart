import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:test/test.dart';

void main() {
  test('returns list of applications for correct api key', () async {
    //
    final client = CodemagicClient(authKey: '');
    final result = await client.getBuilds();
    print(result);
  });

  test('returns application for correct api key', () async {
    //
    final client = CodemagicClient(authKey: '');
    final result = await client.getApplication('5fd09e2e37b38964d110e087');
    print(result);
  });

  test('starts build for given app id', () async {
    //
    final client = CodemagicClient(authKey: '');
    final result = await client.startBuild(
        '5fd09e2e37b38964d110e087', '5fd09e2e37b38964d110e086', 'main');
    print(result);
  });

  test('fails to start build for given app id with wrong branch', () async {
    //
    final client = CodemagicClient(authKey: '');
    final result = await client.startBuild(
        '5fd09e2e37b38964d110e087', '5fd09e2e37b38964d110e086', 'master');
    print(result);
  });

  test('starts and cancels the build for given app id', () async {
    //
    final client = CodemagicClient(authKey: 'd8C-Kuk4eUrdtYpgEWs1qA');
    final result = await client.startBuild(
        '5fd09e2e37b38964d110e087', '5fd09e2e37b38964d110e086', 'main');
    print(result);
    await Future.delayed(Duration(seconds: 5));
    final cancelResult = await client.cancelBuild('${result.data?.buildId}');
    print(cancelResult);
  });
}
