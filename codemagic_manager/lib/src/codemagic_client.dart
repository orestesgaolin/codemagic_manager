import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'model/builds.dart';
import 'model/model.dart';

/// Client used to retrieve informations from Codemagic API
class CodemagicClient {
  /// Auth key used to authenticate API calls
  final String authKey;

  /// URL of Codemagic API
  final String apiUrl;

  final Dio _dio;

  final int timeoutInSeconds;

  /// CodemagicClient constructor
  CodemagicClient({
    @required this.authKey,
    @required this.apiUrl,
    this.timeoutInSeconds = 30,
  })  : assert(authKey != null, 'Codemagic auth key is required'),
        assert(apiUrl != null, 'Codemagic api URL is required'),
        _dio = Dio(BaseOptions(connectTimeout: timeoutInSeconds * 1000));

  /// Retrieves [Builds] object containing list of [Application]s and [Build]s
  Future<ApiResponse<Builds>> getBuilds() async {
    try {
      final response = await _dio.get(
        '$apiUrl/builds',
        options: Options(
          headers: {
            'Authorization': 'Bearer $authKey',
          },
        ),
      );
      final data = response.data;
      if (data != null) {
        final builds = Builds.fromJson(data);
        return ApiResponse(wasSuccessful: true, data: builds);
      }
      return ApiResponse(wasSuccessful: false, error: response.statusMessage);
    } on DioError catch (e) {
      return ApiResponse(
          wasSuccessful: false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      print(e);
      return ApiResponse(wasSuccessful: false, error: 'Unknown error');
    }
  }

  /// Retrieves information about specific [Application] by its [id]
  Future<ApiResponse<Application>> getApplication(String id) async {
    try {
      final response = await _dio.get(
        '$apiUrl/apps/$id',
        options: Options(
          headers: {
            'Authorization': 'Bearer $authKey',
          },
        ),
      );
      final data = response.data;
      if (data != null) {
        final application = data['application'];
        final app = Application.fromJson(application);
        return ApiResponse(wasSuccessful: true, data: app);
      }
      return ApiResponse(wasSuccessful: false, error: response.statusMessage);
    } on DioError catch (e) {
      return ApiResponse(
          wasSuccessful: false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      print(e);
      return ApiResponse(wasSuccessful: false, error: 'Unknown error');
    }
  }

  /// Starts new build for [Application] by its [appId], [workflowId]
  /// and [branch]
  Future<ApiResponse<BuildResponse>> startBuild(
    String appId,
    String workflowId,
    String branch,
  ) async {
    try {
      final response = await _dio.post(
        '$apiUrl/builds',
        data: {
          'appId': '$appId',
          'workflowId': '$workflowId',
          'branch': '$branch',
        },
        options: Options(
          headers: {
            'Authorization': 'Bearer $authKey',
          },
        ),
      );
      final data = response.data;
      if (data != null) {
        final app = BuildResponse.fromJson(data);
        return ApiResponse(wasSuccessful: true, data: app);
      }
      return ApiResponse(wasSuccessful: false, error: response.statusMessage);
    } on DioError catch (e) {
      return ApiResponse(
          wasSuccessful: false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      print(e);
      return ApiResponse(wasSuccessful: false, error: 'Unknown error');
    }
  }

  /// Cancels build by is [buildId]. Returns HTTP 208 if build already cancelled
  Future<ApiResponse<CancelBuildResponse>> cancelBuild(String buildId) async {
    try {
      final response = await _dio.post(
        '$apiUrl/builds/$buildId/cancel',
        options: Options(
          headers: {
            'Authorization': 'Bearer $authKey',
          },
        ),
      );
      final data = response.data;
      if (data != null) {
        final app = CancelBuildResponse.fromJson(data);
        return ApiResponse(wasSuccessful: true, data: app);
      }
      return ApiResponse(wasSuccessful: false, error: response.statusMessage);
    } on DioError catch (e) {
      return ApiResponse(
          wasSuccessful: false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      print(e);
      return ApiResponse(wasSuccessful: false, error: 'Unknown error');
    }
  }
}
