// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'pinned_account_view.dart';

part 'pinned_account_schema.g.dart';

@JsonSerializable()
class PinnedAccountSchema {
  const PinnedAccountSchema({
    required this.team,
    required this.view,
  });
  
  factory PinnedAccountSchema.fromJson(Map<String, Object?> json) => _$PinnedAccountSchemaFromJson(json);
  
  /// Allowed values: `personal` or team ID, see [/user/teams](#/operations/UserTeamsGetTeams)
  final String team;
  final PinnedAccountView view;

  Map<String, Object?> toJson() => _$PinnedAccountSchemaToJson(this);
}
