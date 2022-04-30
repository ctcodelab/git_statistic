// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discussion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Discussion _$$_DiscussionFromJson(Map<String, dynamic> json) =>
    _$_Discussion(
      body: json['body'] as String,
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DiscussionToJson(_$_Discussion instance) =>
    <String, dynamic>{
      'body': instance.body,
      'author': instance.author,
    };
