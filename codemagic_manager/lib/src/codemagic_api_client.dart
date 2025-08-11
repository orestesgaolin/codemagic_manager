// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';

import 'codemagic/codemagic_client.dart';

/// Codemagic API `vv3.0`.
///
///
/// ## Rate limits for the REST API.
///
/// Codemagic limits the number of REST API requests that you can make within a specific amount of time.
/// This limit helps prevent abuse and denial-of-service attacks, and ensures that the API remains available for all users.
///
/// You can use a personal API key to make API requests. All of these requests count towards your personal rate limit of.
/// 5,000 requests per hour.
///
/// If you exceed your rate limit, you will receive a `429` response, and the `ratelimit-remaining` header will be `0`.
/// You should not retry your request until after the time specified by the `ratelimit-reset` header.
///
/// ### Checking the status of your rate limit.
///
/// You can use the headers that are sent with each response to determine the current status of your rate limit.
///
/// | **Header** | **Description** |.
/// | ---    | ---         |.
/// | ratelimit-limit | The maximum number of requests that you can make per hour. |.
/// | ratelimit-remaining | The number of requests remaining in the current rate limit window. |.
/// | ratelimit-reset | The number of seconds remaining until the current rate limit window resets. |.
///
/// ## Help and support.
///
/// - Ask our [GitHub community](https://github.com/codemagic-ci-cd/codemagic-docs/discussions).
/// - Our paying customers can get in touch with us via the in-app chat widget.
///   You have to be logged in to see the chat icon (note that some ad blockers may block the chat widget).
///
/// ---.
/// &copy; Nevercode Ltd. | All Rights Reserved | Codemagic is registered trademark of Nevercode Ltd. | [Terms](https://codemagic.io/terms).
///
class CodemagicApiClient {
  CodemagicApiClient(Dio dio, {String? baseUrl = 'https://api.codemagic.io'})
    : _dio = dio,
      _baseUrl = baseUrl;

  final Dio _dio;
  final String? _baseUrl;

  static String get version => 'v3.0';

  CodemagicClient? _codemagic;

  CodemagicClient get codemagic =>
      _codemagic ??= CodemagicClient(_dio, baseUrl: _baseUrl);
}
