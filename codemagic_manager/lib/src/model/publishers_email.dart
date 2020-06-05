import 'package:freezed_annotation/freezed_annotation.dart';

part 'publishers_email.freezed.dart';
part 'publishers_email.g.dart';

@freezed
abstract class PublishersEmail with _$PublishersEmail {
  factory PublishersEmail({
    bool enabled,
    List<String> recipients,
  }) = _PublishersEmail;

  factory PublishersEmail.fromJson(Map<String, dynamic> json) =>
      _$PublishersEmailFromJson(json);
}
