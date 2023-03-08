import 'package:hive/hive.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/features/share_account/domain/entities/shared_member_entity.dart';

part 'member_entity.g.dart';

@HiveType(typeId: HiveId.memberId)
class MemberEntity {
  const MemberEntity({
    required this.id,
    required this.avatarUrl,
    required this.name,
    required this.state,
    required this.username,
    required this.sharedWith,
  });

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String? avatarUrl;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String state;
  @HiveField(4)
  final String username;
  @HiveField(5)
  final List<SharedMemberEntity> sharedWith;
}
