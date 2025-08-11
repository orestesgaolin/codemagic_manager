// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferencesSchema _$PreferencesSchemaFromJson(Map json) => PreferencesSchema(
  pinnedAccounts: (json['pinned_accounts'] as List<dynamic>)
      .map(
        (e) =>
            PinnedAccountSchema.fromJson(Map<String, Object?>.from(e as Map)),
      )
      .toList(),
  theme: Theme.fromJson(json['theme'] as String),
);

Map<String, dynamic> _$PreferencesSchemaToJson(
  PreferencesSchema instance,
) => <String, dynamic>{
  'pinned_accounts': instance.pinnedAccounts.map((e) => e.toJson()).toList(),
  'theme': instance.theme.toJson(),
};
