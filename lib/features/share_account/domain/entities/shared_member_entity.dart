import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:git_statistic/core/constants/constants.dart';

part 'shared_member_entity.g.dart';

@HiveType(typeId: HiveId.sharedMemberId)
@freezed
class SharedMemberEntity {
  SharedMemberEntity({
    required this.name,
    required this.id,
    this.recognitionKey = '',
  });

  @HiveField(0)
  final String name;
  @HiveField(1)
  String recognitionKey;
  @HiveField(2)
  final int id;
}
