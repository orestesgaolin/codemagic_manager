import 'package:json_annotation/json_annotation.dart';

import 'application.dart';
import 'build.dart';

part 'builds.g.dart';

@JsonSerializable()
class Builds {
  Builds(this.builds, this.applications);

  final List<Application> applications;
  final List<Build> builds;

  factory Builds.fromJson(Map<String, dynamic> json) => _$BuildsFromJson(json);
  Map<String, dynamic> toJson() => _$BuildsToJson(this);
}
