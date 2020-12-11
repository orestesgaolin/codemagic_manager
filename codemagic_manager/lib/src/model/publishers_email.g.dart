// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishers_email.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublishersEmail _$PublishersEmailFromJson(Map json) {
  return PublishersEmail(
    enabled: json['enabled'] as bool? ?? false,
    recipients: (json['recipients'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$PublishersEmailToJson(PublishersEmail instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'recipients': instance.recipients,
    };
