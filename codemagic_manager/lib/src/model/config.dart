import 'package:json_annotation/json_annotation.dart';

import 'build_settings.dart';

part 'config.g.dart';

@JsonSerializable()
class Config {
  Config({
    required this.buildSettings,
    required this.name,
  });

  final BuildSettings buildSettings;
  final String name;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}
