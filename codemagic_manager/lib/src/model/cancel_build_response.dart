import 'package:json_annotation/json_annotation.dart';

import 'build.dart';

part 'cancel_build_response.g.dart';

@JsonSerializable()
class CancelBuildResponse {
  CancelBuildResponse({
    required this.build,
  });

  final Build build;

  factory CancelBuildResponse.fromJson(Map<String, dynamic> json) =>
      _$CancelBuildResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CancelBuildResponseToJson(this);
}
