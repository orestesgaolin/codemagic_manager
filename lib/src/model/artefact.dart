import 'package:freezed_annotation/freezed_annotation.dart';

part 'artefact.freezed.dart';
part 'artefact.g.dart';

@freezed
abstract class Artefact with _$Artefact {
  factory Artefact({
    String md5,
    String name,
    String packageName,
    String type,
    String url,
    String versionName,
  }) = _Artefact;

  factory Artefact.fromJson(Map<String, dynamic> json) => _$ArtefactFromJson(json);
}