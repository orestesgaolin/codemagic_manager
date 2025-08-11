// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Applications _$ApplicationsFromJson(Map json) => Applications(
      applications: (json['applications'] as List<dynamic>?)
              ?.map((e) =>
                  Application.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ApplicationsToJson(Applications instance) =>
    <String, dynamic>{
      'applications': instance.applications.map((e) => e.toJson()).toList(),
    };
