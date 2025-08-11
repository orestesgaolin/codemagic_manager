// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_user_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackUserSchema _$TrackUserSchemaFromJson(Map json) => TrackUserSchema(
  event: ClientEvent.fromJson(json['event'] as String),
  properties: Map<String, String>.from(json['properties'] as Map),
);

Map<String, dynamic> _$TrackUserSchemaToJson(TrackUserSchema instance) =>
    <String, dynamic>{
      'event': instance.event.toJson(),
      'properties': instance.properties,
    };
