// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'client_event.dart';

part 'track_user_schema.g.dart';

@JsonSerializable()
class TrackUserSchema {
  const TrackUserSchema({
    required this.event,
    required this.properties,
  });
  
  factory TrackUserSchema.fromJson(Map<String, Object?> json) => _$TrackUserSchemaFromJson(json);
  
  final ClientEvent event;
  final Map<String, String> properties;

  Map<String, Object?> toJson() => _$TrackUserSchemaToJson(this);
}
