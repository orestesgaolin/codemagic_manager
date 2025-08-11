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
  /// This endpoint returns a paginated list of recent builds along with their
  /// associated applications. The response includes build status, timing information,
  /// and artifact details.
  /// 
  /// Parameters:
  /// - [limit]: Maximum number of builds to return (optional, default API limit applies)
  /// - [offset]: Number of builds to skip for pagination (optional, default is 0)
  /// 
  /// Returns [ApiResponse] containing [Builds] data on success, or error information
  /// on failure (e.g., 401 for invalid authentication).
  Future<ApiResponse<Builds>> getBuilds({int? limit, int? offset}) async {
    try {
      final queryParams = <String, String>{};
      if (limit != null) queryParams['limit'] = limit.toString();
      if (offset != null) queryParams['offset'] = offset.toString();
      
      final uri = Uri.parse("$apiUrl/builds").replace(queryParameters: queryParams);
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
      return ApiResponse(
          wasSuccessful: false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Retrieves list of [Application]s
  /// 
  /// Parameters:
  /// - [limit]: Maximum number of applications to return (optional, default API limit applies)
  /// - [offset]: Number of applications to skip for pagination (optional, default is 0)
  Future<ApiResponse<Applications>> getApplications({int? limit, int? offset}) async {
    try {
      final queryParams = <String, String>{};
      if (limit != null) queryParams['limit'] = limit.toString();
      if (offset != null) queryParams['offset'] = offset.toString();
      
      final uri = Uri.parse("$apiUrl/apps").replace(queryParameters: queryParams);
      final request = await _client.getUrl(uri);
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final applications = Applications.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: applications);
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
  /// 
  /// Fetches detailed information about a single application including its
  /// configuration, workflow definitions, repository settings, and metadata.
  /// 
  /// Parameters:
  /// - [id]: The unique identifier of the application
  /// 
  /// Returns [ApiResponse] containing [Application] data on success, or error
  /// information on failure (e.g., 404 if application not found).
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

  /// Retrieves information about specific [Build] by its [id]
  Future<ApiResponse<Build>> getBuild(String id) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/builds/$id"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final build = Build.fromJson(json['build']);
        return ApiResponse(wasSuccessful: true, data: build);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on Exception catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Retrieves builds for specific [Application] by its [appId]
  /// 
  /// Parameters:
  /// - [appId]: The unique identifier of the application
  /// - [limit]: Maximum number of builds to return (optional, default API limit applies)
  /// - [offset]: Number of builds to skip for pagination (optional, default is 0)
  Future<ApiResponse<Builds>> getBuildsForApplication(String appId, {int? limit, int? offset}) async {
    try {
      final queryParams = <String, String>{};
      if (limit != null) queryParams['limit'] = limit.toString();
      if (offset != null) queryParams['offset'] = offset.toString();
      
      final uri = Uri.parse("$apiUrl/apps/$appId/builds").replace(queryParameters: queryParams);
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
    } on Exception catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Starts new build for [Application] by its [appId], [workflowId] and [branch]
  /// 
  /// Triggers a new build for the specified application using the given workflow
  /// and source branch. The build will be queued and executed asynchronously.
  /// 
  /// Parameters:
  /// - [appId]: The unique identifier of the application
  /// - [workflowId]: The workflow identifier to use for the build
  /// - [branch]: The source branch name to build from
  /// 
  /// Returns [ApiResponse] containing [BuildResponse] with the new build ID on
  /// success, or error information on failure (e.g., 400 for invalid parameters).
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

  /// Generates a public URL for downloading a specific [Artifact] by its [artifactId]
  /// 
  /// According to the Codemagic API documentation, each build includes a list of 
  /// artifacts, and for each artifact you can generate a public download URL.
  /// 
  /// Parameters:
  /// - [artifactId]: The unique identifier of the artifact
  /// 
  /// Returns [ApiResponse] containing the download URL as a string on success,
  /// or error information on failure.
  Future<ApiResponse<String>> getArtifactDownloadUrl(String artifactId) async {
    try {
      final request = await _client.postUrl(Uri.parse("$apiUrl/artifacts/$artifactId"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final url = json['url'] as String;
        return ApiResponse(wasSuccessful: true, data: url);
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

  /// Retrieves list of [Cache]s for a specific application
  /// 
  /// Parameters:
  /// - [appId]: The unique identifier of the application
  Future<ApiResponse<List<Cache>>> getCaches(String appId) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/apps/$appId/caches"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final cachesList = json['caches'] as List;
        final caches = cachesList.map((cache) => Cache.fromJson(cache)).toList();
        return ApiResponse(wasSuccessful: true, data: caches);
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

  /// Retrieves information about specific [Cache] by its [id] for a specific application
  /// 
  /// Parameters:
  /// - [appId]: The unique identifier of the application
  /// - [cacheId]: The unique identifier of the cache
  Future<ApiResponse<Cache>> getCache(String appId, String cacheId) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/apps/$appId/caches/$cacheId"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final cache = Cache.fromJson(json['cache']);
        return ApiResponse(wasSuccessful: true, data: cache);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on Exception catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Deletes [Cache] by its [cacheId] for a specific application
  /// 
  /// Parameters:
  /// - [appId]: The unique identifier of the application
  /// - [cacheId]: The unique identifier of the cache
  Future<ApiResponse<bool>> deleteCache(String appId, String cacheId) async {
    try {
      final request = await _client.deleteUrl(Uri.parse("$apiUrl/apps/$appId/caches/$cacheId"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      
      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.noContent) {
        return ApiResponse(wasSuccessful: true, data: true);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on Exception catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

}
