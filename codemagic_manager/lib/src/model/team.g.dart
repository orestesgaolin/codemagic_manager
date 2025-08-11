// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Team _$TeamFromJson(Map json) => Team(
      id: json['_id'] as String,
      name: json['name'] as String,
      memberCount: (json['memberCount'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'memberCount': instance.memberCount,
      'createdAt': instance.createdAt.toIso8601String(),
      'description': instance.description,
      'avatar': instance.avatar,
    };

TeamMember _$TeamMemberFromJson(Map json) => TeamMember(
      id: json['_id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
      joinedAt: DateTime.parse(json['joinedAt'] as String),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$TeamMemberToJson(TeamMember instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'role': instance.role,
      'joinedAt': instance.joinedAt.toIso8601String(),
      'avatar': instance.avatar,
    };

Teams _$TeamsFromJson(Map json) => Teams(
      teams: (json['teams'] as List<dynamic>?)
              ?.map((e) => Team.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TeamsToJson(Teams instance) => <String, dynamic>{
      'teams': instance.teams.map((e) => e.toJson()).toList(),
    };

TeamMembers _$TeamMembersFromJson(Map json) => TeamMembers(
      members: (json['members'] as List<dynamic>?)
              ?.map((e) =>
                  TeamMember.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$TeamMembersToJson(TeamMembers instance) =>
    <String, dynamic>{
      'members': instance.members.map((e) => e.toJson()).toList(),
    };
