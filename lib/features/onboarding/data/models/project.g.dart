// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      id: json['id'] as int,
      nameWithNamespace: json['name_with_namespace'] as String,
      avatarUrl: json['avatar_url'] as String?,
      lastActivityAt: DateTime.parse(json['last_activity_at'] as String),
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_with_namespace': instance.nameWithNamespace,
      'avatar_url': instance.avatarUrl,
      'last_activity_at': instance.lastActivityAt.toIso8601String(),
    };
