import 'package:hive/hive.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/features/onboarding/domain/entities/member_entity.dart';

part 'members_entity.g.dart';

@HiveType(typeId: HiveId.membersId)
class MembersEntity {
  const MembersEntity({
    required this.members,
  });

  @HiveField(0)
  final List<MemberEntity> members;

  int get length => members.length;

  MemberEntity operator [](int index) {
    return members[index];
  }
}
