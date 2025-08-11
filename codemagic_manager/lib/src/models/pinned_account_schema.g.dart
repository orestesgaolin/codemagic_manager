// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinned_account_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinnedAccountSchema _$PinnedAccountSchemaFromJson(Map json) =>
    PinnedAccountSchema(
      team: json['team'] as String,
      view: PinnedAccountView.fromJson(json['view'] as String),
    );

Map<String, dynamic> _$PinnedAccountSchemaToJson(
  PinnedAccountSchema instance,
) => <String, dynamic>{'team': instance.team, 'view': instance.view.toJson()};
