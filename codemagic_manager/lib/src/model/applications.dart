import 'package:json_annotation/json_annotation.dart';

import 'application.dart';

part 'applications.g.dart';

/// Wrapper class for applications list response
@JsonSerializable()
class Applications {
  Applications({
    required this.applications,
  });

  @JsonKey(defaultValue: [])
  final List<Application> applications;

  factory Applications.fromJson(Map<String, dynamic> json) =>
      _$ApplicationsFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationsToJson(this);
}