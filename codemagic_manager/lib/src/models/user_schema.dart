// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'permission.dart';

part 'user_schema.g.dart';

@JsonSerializable()
class UserSchema {
  const UserSchema({
    required this.id,
    required this.permissions,
    this.avatarUrl,
  });
  
  factory UserSchema.fromJson(Map<String, Object?> json) => _$UserSchemaFromJson(json);
  
  final String id;
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  final Map<String, List<Permission>> permissions;

  Map<String, Object?> toJson() => _$UserSchemaToJson(this);
}
