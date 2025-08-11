import 'package:json_annotation/json_annotation.dart';

import 'model.dart';

part 'build_status_response.g.dart';

@JsonSerializable()
class BuildStatusResponse {
  BuildStatusResponse({
    required this.application,
    required this.build,
  });

  final Application application;
  final Build build;

  factory BuildStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$BuildStatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BuildStatusResponseToJson(this);
}