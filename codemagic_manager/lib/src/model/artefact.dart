import 'package:json_annotation/json_annotation.dart';

part 'artefact.g.dart';

@JsonSerializable()
class Artefact {
  Artefact({
    this.md5,
    this.name,
    this.packageName,
    this.type,
    this.url,
    this.versionName,
    this.size,
  });

  final String? md5;
  final String? name;
  final String? packageName;
  final String? type;
  final String? url;
  final String? versionName;
  final int? size;

  factory Artefact.fromJson(Map<String, dynamic> json) =>
      _$ArtefactFromJson(json);

  Map<String, dynamic> toJson() => _$ArtefactToJson(this);
}
