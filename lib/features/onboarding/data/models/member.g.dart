// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      id: json['id'] as int,
      avatarUrl: json['avatar_url'] as String?,
      name: json['name'] as String,
      state: json['state'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'id': instance.id,
      'avatar_url': instance.avatarUrl,
      'name': instance.name,
      'state': instance.state,
      'username': instance.username,
    };
