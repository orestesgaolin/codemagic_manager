class ApiResponse<T> {
  final bool wasSuccessful;
  final T data;
  final String error;

  ApiResponse(this.wasSuccessful, {this.data, this.error});
}
