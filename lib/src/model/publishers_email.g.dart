// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publishers_email.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublishersEmail _$_$_PublishersEmailFromJson(Map json) {
  return _$_PublishersEmail(
    enabled: json['enabled'] as bool,
    recipients: (json['recipients'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_PublishersEmailToJson(_$_PublishersEmail instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
      'recipients': instance.recipients,
    };
