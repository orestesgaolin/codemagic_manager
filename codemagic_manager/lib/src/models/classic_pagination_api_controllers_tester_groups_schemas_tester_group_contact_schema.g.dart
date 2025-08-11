// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic_pagination_api_controllers_tester_groups_schemas_tester_group_contact_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema
_$ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchemaFromJson(
  Map json,
) => ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema(
  data: (json['data'] as List<dynamic>)
      .map(
        (e) => TesterGroupContactSchema.fromJson(
          Map<String, Object?>.from(e as Map),
        ),
      )
      .toList(),
  pageSize: (json['page_size'] as num).toInt(),
  currentPage: (json['current_page'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic>
_$ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchemaToJson(
  ClassicPaginationApiControllersTesterGroupsSchemasTesterGroupContactSchema
  instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'page_size': instance.pageSize,
  'current_page': instance.currentPage,
  'total_pages': instance.totalPages,
};
