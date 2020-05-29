import 'package:freezed_annotation/freezed_annotation.dart';

import 'build_settings.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
abstract class Config with _$Config {
  factory Config({
    BuildSettings buildSettings,
    String name,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}
