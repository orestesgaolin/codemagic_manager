import 'package:freezed_annotation/freezed_annotation.dart';

import 'application.dart';
import 'build.dart';

part 'builds.freezed.dart';
part 'builds.g.dart';

@freezed
abstract class Builds with _$Builds {
  factory Builds({
    List<Application> applications,
    List<Build> builds,
  }) = _Builds;

  factory Builds.fromJson(Map<String, dynamic> json) => _$BuildsFromJson(json);
}
