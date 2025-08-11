// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSchema _$UserSchemaFromJson(Map json) => UserSchema(
  id: json['id'] as String,
  permissions: (json['permissions'] as Map).map(
    (k, e) => MapEntry(
      k as String,
      (e as List<dynamic>)
          .map((e) => Permission.fromJson(e as String))
          .toList(),
    ),
  ),
  avatarUrl: json['avatar_url'] as String?,
);

Map<String, dynamic> _$UserSchemaToJson(UserSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'permissions': instance.permissions.map(
        (k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()),
      ),
    };
