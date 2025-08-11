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
  /// Returns [ApiResponse] containing [Builds] data on success, or error information
  /// on failure (e.g., 401 for invalid authentication).
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

  /// Retrieves list of [Application]s
  Future<ApiResponse<Applications>> getApplications() async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/apps"));
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
  Future<ApiResponse<Builds>> getBuildsForApplication(String appId) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/apps/$appId/builds"));
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

  /// Retrieves artifacts for specific [Build] by its [buildId]
  Future<ApiResponse<Artifacts>> getArtifacts(String buildId) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/builds/$buildId/artifacts"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final artifacts = Artifacts.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: artifacts);
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

  /// Retrieves information about specific [Artifact] by its [id]
  Future<ApiResponse<Artifact>> getArtifact(String id) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/artifacts/$id"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final artifact = Artifact.fromJson(json['artifact']);
        return ApiResponse(wasSuccessful: true, data: artifact);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on Exception catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Retrieves list of [Cache]s
  Future<ApiResponse<Caches>> getCaches() async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/caches"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final caches = Caches.fromJson(json);
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

  /// Retrieves information about specific [Cache] by its [id]
  Future<ApiResponse<Cache>> getCache(String id) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/caches/$id"));
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

  /// Deletes [Cache] by its [id]
  Future<ApiResponse<bool>> deleteCache(String id) async {
    try {
      final request = await _client.deleteUrl(Uri.parse("$apiUrl/caches/$id"));
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

  /// Retrieves list of [Team]s
  Future<ApiResponse<Teams>> getTeams() async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/teams"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final teams = Teams.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: teams);
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

  /// Retrieves information about specific [Team] by its [id]
  Future<ApiResponse<Team>> getTeam(String id) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/teams/$id"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final team = Team.fromJson(json['team']);
        return ApiResponse(wasSuccessful: true, data: team);
      }

      return ApiResponse(
        wasSuccessful: false,
        error: 'Response code was ${response.statusCode}',
      );
    } on Exception catch (e) {
      return ApiResponse(wasSuccessful: false, error: 'Unknown error: $e');
    }
  }

  /// Retrieves list of [TeamMember]s for specific [Team] by its [teamId]
  Future<ApiResponse<TeamMembers>> getTeamMembers(String teamId) async {
    try {
      final request = await _client.getUrl(Uri.parse("$apiUrl/teams/$teamId/members"));
      request.headers.add(HttpHeaders.authorizationHeader, 'Bearer $authKey');
      final response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        final data = await utf8.decoder.bind(response).join();
        final json = jsonDecode(data);
        final teamMembers = TeamMembers.fromJson(json);
        return ApiResponse(wasSuccessful: true, data: teamMembers);
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
}
