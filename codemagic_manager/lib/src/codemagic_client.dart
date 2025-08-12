import 'dart:convert';
import 'dart:io';

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
  ///
  /// Optional [skip] parameter for pagination - skips the specified number of builds.
  /// Optional [appId] parameter to filter builds by application ID.
  /// Optional [workflowId] parameter to filter builds by workflow ID.
  /// Optional [branch] parameter to filter builds by branch name.
  /// Optional [tag] parameter to filter builds by tag name.
  Future<ApiResponse<Builds>> getBuilds({
    int? skip,
    String? appId,
    String? workflowId,
    String? branch,
    String? tag,
  }) async {
    try {
      final queryParams = <String, String>{};
      if (skip != null) queryParams['skip'] = skip.toString();
      if (appId != null) queryParams['appId'] = appId;
      if (workflowId != null) queryParams['workflowId'] = workflowId;
      if (branch != null) queryParams['branch'] = branch;
      if (tag != null) queryParams['tag'] = tag;

      final uri = Uri.parse("$apiUrl/builds").replace(queryParameters: queryParams.isNotEmpty ? queryParams : null);
      final request = await _client.getUrl(uri);
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
      return ApiResponse(wasSuccessful: false, error: 'HTTP error: ${e.message}');
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
  /// and [branch] or [tag]. Either [branch] or [tag] is required.
  ///
  /// Optional parameters:
  /// - [environment]: Environment variables, variable groups, and software versions
  /// - [labels]: Additional labels to include for the build
  /// - [instanceType]: Instance type for the build (e.g., 'mac_mini_m2')
  Future<ApiResponse<BuildResponse>> startBuild(
    String appId,
    String workflowId, {
    String? branch,
    String? tag,
    Map<String, dynamic>? environment,
    List<String>? labels,
    String? instanceType,
  }) async {
    try {
      final request = await _client.postUrl(Uri.parse("$apiUrl/builds"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      request.headers.contentType = ContentType(
        "application",
        "json",
        charset: "utf-8",
      );

      if (branch == null && tag == null) {
        throw ArgumentError('Either branch or tag must be provided');
      }

      final data = <String, dynamic>{
        'appId': appId,
        'workflowId': workflowId,
      };

      if (branch != null) data['branch'] = branch;
      if (tag != null) data['tag'] = tag;
      if (environment != null) data['environment'] = environment;
      if (labels != null && labels.isNotEmpty) data['labels'] = labels;
      if (instanceType != null) data['instanceType'] = instanceType;

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
      final request = await _client.postUrl(Uri.parse("$apiUrl/builds/$buildId/cancel"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      request.headers.contentType = ContentType(
        "application",
        "json",
        charset: "utf-8",
      );

      final response = await request.close();

      if (response.statusCode == HttpStatus.ok || response.statusCode == HttpStatus.alreadyReported) {
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

  /// Gets build status for a specific [buildId]
  ///
  /// Returns build information including current status. Status can be:
  /// building, canceled, finishing, finished, failed, fetching, preparing,
  /// publishing, queued, skipped, testing, timeout, warning
  Future<ApiResponse<BuildStatusResponse>> getBuildStatus(String buildId) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/builds/$buildId"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();

      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final buildStatus = BuildStatusResponse.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: buildStatus);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on HttpException catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Creates a public download URL for an artifact
  ///
  /// This is a 2-step process:
  /// 1. Get the artifact URL from build artifacts
  /// 2. Create a public URL using this method
  ///
  /// [artifactUrl] should be the secure URL from build artifacts
  /// [expiresAt] is the UNIX timestamp when the URL should expire
  Future<ApiResponse<ArtifactPublicUrlResponse>> getArtifactPublicUrl(
    String artifactUrl,
    int expiresAt,
  ) async {
    try {
      // Extract the path from the artifact URL to use as endpoint
      final uri = Uri.parse(artifactUrl);
      final path = uri.path;

      final request = await _client.postUrl(Uri.parse("$apiUrl$path/public-url"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      request.headers.contentType = ContentType(
        "application",
        "json",
        charset: "utf-8",
      );

      final data = {
        'expiresAt': expiresAt,
      };

      request.write(jsonEncode(data));
      final response = await request.close();

      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final publicUrl = ArtifactPublicUrlResponse.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: publicUrl);
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

  /// Retrieves cache information for a specific application
  ///
  /// Lists all caches for the specified [appId]
  Future<ApiResponse<CacheResponse>> getApplicationCaches(String appId) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/apps/$appId/caches"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();

      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final caches = CacheResponse.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: caches);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on HttpException catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Deletes all caches for a specific application
  ///
  /// Returns 202 Accepted and cache deletion is completed asynchronously
  Future<ApiResponse<CacheDeleteResponse>> deleteApplicationCaches(String appId) async {
    try {
      final request = await _client.deleteUrl(Uri.parse("$apiUrl/apps/$appId/caches"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      request.headers.contentType = ContentType(
        "application",
        "json",
        charset: "utf-8",
      );

      final response = await request.close();

      if (response.statusCode == HttpStatus.accepted) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final deleteResponse = CacheDeleteResponse.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: deleteResponse);
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

  /// Deletes a specific cache for an application
  ///
  /// Returns 202 Accepted and cache deletion is completed asynchronously
  Future<ApiResponse<CacheDeleteResponse>> deleteApplicationCache(
    String appId,
    String cacheId,
  ) async {
    try {
      final request = await _client.deleteUrl(Uri.parse("$apiUrl/apps/$appId/caches/$cacheId"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      request.headers.contentType = ContentType(
        "application",
        "json",
        charset: "utf-8",
      );

      final response = await request.close();

      if (response.statusCode == HttpStatus.accepted) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final deleteResponse = CacheDeleteResponse.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: deleteResponse);
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
