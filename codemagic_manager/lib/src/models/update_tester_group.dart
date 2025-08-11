// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'update_tester_group.g.dart';

@JsonSerializable()
class UpdateTesterGroup {
  const UpdateTesterGroup({
    required this.name,
  });
  
  factory UpdateTesterGroup.fromJson(Map<String, Object?> json) => _$UpdateTesterGroupFromJson(json);
  
  final String name;

  Map<String, Object?> toJson() => _$UpdateTesterGroupToJson(this);
}
