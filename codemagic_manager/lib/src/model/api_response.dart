import 'dart:convert';

import 'package:meta/meta.dart';

/// Wrapper class for all the responses from the API
@immutable
class ApiResponse<T> {
  /// Default constructor
  ApiResponse({
    required this.wasSuccessful,
    this.data,
    this.error,
  });

  /// Indicates whether response was success
  final bool wasSuccessful;

  /// Contains response data of type [T]
  ///
  /// Can be null
  final T? data;

  /// In case of error provides some additional information, may be empty
  final String? error;

  @override
  String toString() =>
      'ApiResponse(wasSuccessful: $wasSuccessful, data: $data, error: $error)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ApiResponse<T> &&
        o.wasSuccessful == wasSuccessful &&
        o.data == data &&
        o.error == error;
  }

  @override
  int get hashCode => wasSuccessful.hashCode ^ data.hashCode ^ error.hashCode;
}
