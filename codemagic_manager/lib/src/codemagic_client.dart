import 'dart:convert';
import 'dart:io';

import 'model/builds.dart';
import 'model/model.dart';

/// Client used to retrieve informations from Codemagic API
class CodemagicClient {
  /// Auth key used to authenticate API calls
  final String authKey;

  /// URL of Codemagic API
  final String apiUrl;

  final int timeoutInSeconds;

  final HttpClient _client;

  /// CodemagicClient constructor
  CodemagicClient({
    required this.authKey,
    this.apiUrl = 'https://api.codemagic.io',
    this.timeoutInSeconds = 30,
  }) : _client = HttpClient();

  /// Retrieves [Builds] object containing list of [Application]s and [Build]s
  Future<ApiResponse<Builds>> getBuilds() async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/builds"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final builds = Builds.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: builds);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on HttpException catch (e) {
      return ApiResponse(
          wasSuccessful: false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Retrieves information about specific [Application] by its [id]
  Future<ApiResponse<Application>> getApplication(String id) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/apps/$id"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final builds = Application.fromJson(json['application']);
        return ApiResponse(wasSuccessful: true, data: builds);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on Exception catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
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
      final request = await _client.postUrl(Uri.parse("$apiUrl/builds"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      request.headers.contentType = ContentType(
        "application",
        "json",
        charset: "utf-8",
      );
      final data = {
        'appId': '$appId',
        'workflowId': '$workflowId',
        'branch': '$branch',
      };

      request.write(jsonEncode(data));
      final response = await request.close();

      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final builds = BuildResponse.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: builds);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } catch (e) {
      print(e);
      return ApiResponse(wasSuccessful: false, error: 'Unknown error');
    }
  }

  /// Cancels build by is [buildId]. Returns HTTP 208 if build already cancelled
  Future<ApiResponse<CancelBuildResponse>> cancelBuild(String buildId) async {
    try {
      final request =
          await _client.postUrl(Uri.parse("$apiUrl/builds/$buildId/cancel"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      request.headers.contentType = ContentType(
        "application",
        "json",
        charset: "utf-8",
      );

      final response = await request.close();

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.alreadyReported) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final builds = CancelBuildResponse.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: builds);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } catch (e) {
      print(e);
      return ApiResponse(wasSuccessful: false, error: 'Unknown error');
    }
  }
}
