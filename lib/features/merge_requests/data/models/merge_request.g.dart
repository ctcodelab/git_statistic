// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merge_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MergeRequest _$$_MergeRequestFromJson(Map<String, dynamic> json) =>
    _$_MergeRequest(
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      draft: json['draft'] as bool,
      iid: json['iid'] as int,
      state: json['state'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_MergeRequestToJson(_$_MergeRequest instance) =>
    <String, dynamic>{
      'author': instance.author,
      'created_at': instance.createdAt.toIso8601String(),
      'draft': instance.draft,
      'iid': instance.iid,
      'state': instance.state,
      'description': instance.description,
    };
