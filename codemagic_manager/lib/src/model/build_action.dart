import 'package:json_annotation/json_annotation.dart';

part 'build_action.g.dart';

@JsonSerializable()
class BuildAction {
  BuildAction({
    this.id,
    required this.name,
    required this.type,
    required this.status,
    this.alwaysRun,
    this.startedAt,
    this.finishedAt,
    this.logUrl,
  });

  @JsonKey(name: '_id')
  final String? id;
  final String name;
  final String? type;
  final bool? alwaysRun;
  final String? status;
  final DateTime? startedAt;
  final DateTime? finishedAt;
  final String? logUrl;

  factory BuildAction.fromJson(Map<String, dynamic> json) =>
      _$BuildActionFromJson(json);
  Map<String, dynamic> toJson() => _$BuildActionToJson(this);
}
