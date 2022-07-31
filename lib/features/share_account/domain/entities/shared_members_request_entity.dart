import 'package:iqvia_kpi/features/onboarding/domain/entities/member_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';

class SharedMembersRequestEntity {
  const SharedMembersRequestEntity({
    required this.accountId,
    required this.members,
    required this.sharedWith,
  });

  final int accountId;
  final MembersEntity members;
  final Set<MemberEntity> sharedWith;
}
