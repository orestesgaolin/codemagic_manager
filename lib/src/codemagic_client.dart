import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:codemagic_manager/src/model/api_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'model/builds.dart';

class CodemagicClient {
  final String authKey;
  final String apiUrl;
  final Dio dio = Dio();

  CodemagicClient({@required this.authKey, @required this.apiUrl})
      : assert(authKey != null, 'Codemagic auth key is required'),
        assert(apiUrl != null, 'Codemagic api URL is required');

  Future<ApiResponse<Builds>> getBuilds() async {
    try {
      final response = await dio.get(
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
        return ApiResponse(true, data: builds);
      }
    } on DioError catch (e) {
      return ApiResponse(false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      print(e);
      return ApiResponse(false, error: 'Unknown error');
    }
  }

  Future<ApiResponse<Application>> getApplication(String id) async {
    try {
      final response = await dio.get(
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
        return ApiResponse(true, data: app);
      }
    } on DioError catch (e) {
      return ApiResponse(false, error: 'HTTP error: ${e.message}');
    } catch (e) {
      print(e);
      return ApiResponse(false, error: 'Unknown error');
    }
  }
}
