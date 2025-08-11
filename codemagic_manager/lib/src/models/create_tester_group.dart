// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

part 'create_tester_group.g.dart';

@JsonSerializable()
class CreateTesterGroup {
  const CreateTesterGroup({
    required this.name,
  });
  
  factory CreateTesterGroup.fromJson(Map<String, Object?> json) => _$CreateTesterGroupFromJson(json);
  
  final String name;

  Map<String, Object?> toJson() => _$CreateTesterGroupToJson(this);
}
