// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'features_schema.g.dart';

@JsonSerializable()
class FeaturesSchema {
  const FeaturesSchema({
    this.appPreview,
  });
  
  factory FeaturesSchema.fromJson(Map<String, Object?> json) => _$FeaturesSchemaFromJson(json);
  
  @JsonKey(name: 'app_preview')
  final bool? appPreview;

  Map<String, Object?> toJson() => _$FeaturesSchemaToJson(this);
}
