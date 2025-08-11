// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'pinned_account_schema.dart';
import 'theme.dart';

part 'preferences_schema.g.dart';

@JsonSerializable()
class PreferencesSchema {
  const PreferencesSchema({
    required this.pinnedAccounts,
    required this.theme,
  });
  
  factory PreferencesSchema.fromJson(Map<String, Object?> json) => _$PreferencesSchemaFromJson(json);
  
  @JsonKey(name: 'pinned_accounts')
  final List<PinnedAccountSchema> pinnedAccounts;
  final Theme theme;

  Map<String, Object?> toJson() => _$PreferencesSchemaToJson(this);
}
