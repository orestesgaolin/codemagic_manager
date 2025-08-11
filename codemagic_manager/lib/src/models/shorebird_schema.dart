// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'shorebird_schema.g.dart';

@JsonSerializable()
class ShorebirdSchema {
  const ShorebirdSchema({
    required this.flutterVersions,
  });
  
  factory ShorebirdSchema.fromJson(Map<String, Object?> json) => _$ShorebirdSchemaFromJson(json);
  
  /// For more information, see [Supported Flutter Versions](https://docs.shorebird.dev/getting-started/flutter-version/).
  @JsonKey(name: 'flutter_versions')
  final List<String> flutterVersions;

  Map<String, Object?> toJson() => _$ShorebirdSchemaToJson(this);
}
