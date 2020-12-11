import 'package:json_annotation/json_annotation.dart';

part 'publishers_email.g.dart';

@JsonSerializable()
class PublishersEmail {
  PublishersEmail({
    required this.enabled,
    required this.recipients,
  });

  @JsonKey(defaultValue: false)
  final bool enabled;
  @JsonKey(defaultValue: [])
  final List<String> recipients;

  factory PublishersEmail.fromJson(Map<String, dynamic> json) =>
      _$PublishersEmailFromJson(json);

  Map<String, dynamic> toJson() => _$PublishersEmailToJson(this);
}
