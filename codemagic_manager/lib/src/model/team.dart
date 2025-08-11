import 'package:json_annotation/json_annotation.dart';

part 'team.g.dart';

/// Team model for Codemagic teams
@JsonSerializable()
class Team {
  Team({
    required this.id,
    required this.name,
    required this.memberCount,
    required this.createdAt,
    this.description,
    this.avatar,
  });

  @JsonKey(name: '_id')
  final String id;
  final String name;
  final int memberCount;
  final DateTime createdAt;
  final String? description;
  final String? avatar;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}

/// Team member model
@JsonSerializable()
class TeamMember {
  TeamMember({
    required this.id,
    required this.email,
    required this.name,
    required this.role,
    required this.joinedAt,
    this.avatar,
  });

  @JsonKey(name: '_id')
  final String id;
  final String email;
  final String name;
  final String role;
  final DateTime joinedAt;
  final String? avatar;

  factory TeamMember.fromJson(Map<String, dynamic> json) =>
      _$TeamMemberFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMemberToJson(this);
}

/// Wrapper class for teams list response
@JsonSerializable()
class Teams {
  Teams({
    required this.teams,
  });

  @JsonKey(defaultValue: [])
  final List<Team> teams;

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);

  Map<String, dynamic> toJson() => _$TeamsToJson(this);
}

/// Wrapper class for team members list response
@JsonSerializable()
class TeamMembers {
  TeamMembers({
    required this.members,
  });

  @JsonKey(defaultValue: [])
  final List<TeamMember> members;

  factory TeamMembers.fromJson(Map<String, dynamic> json) =>
      _$TeamMembersFromJson(json);

  Map<String, dynamic> toJson() => _$TeamMembersToJson(this);
}