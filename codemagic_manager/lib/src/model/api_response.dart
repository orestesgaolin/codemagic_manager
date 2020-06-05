import 'package:meta/meta.dart';

/// Wrapper class for all the responses from the API
class ApiResponse<T> {
  /// Indicates whether response was success
  final bool wasSuccessful;

  /// Contains response data of type [T]
  final T data;

  /// In case of error provides some additional information, may be empty
  final String error;

  /// Default constructor
  ApiResponse({@required this.wasSuccessful, this.data, this.error});
}
