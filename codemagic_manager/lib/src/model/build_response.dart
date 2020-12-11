import 'package:json_annotation/json_annotation.dart';

part 'build_response.g.dart';

@JsonSerializable()
class BuildResponse {
  BuildResponse({
    required this.buildId,
  });
  final String buildId;

  factory BuildResponse.fromJson(Map<String, dynamic> json) =>
      _$BuildResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BuildResponseToJson(this);

  @override
  String toString() => 'BuildResponse($buildId)';
}
