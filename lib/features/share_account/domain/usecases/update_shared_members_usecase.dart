import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/onboarding/data/models/member.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';
import 'package:iqvia_kpi/features/share_account/domain/entities/shared_member_entity.dart';
import 'package:iqvia_kpi/features/share_account/domain/entities/shared_members_request_entity.dart';

class UpdateSharedMembersUsecase extends UseCase<MembersEntity, SharedMembersRequestEntity> {
  @override
  MembersEntity call(params) {
    if (params.sharedWith.isNotEmpty) {
      final index = params.members.members.indexWhere((e) => e.id == params.accountId);
      final existedSharing = params.members.members[index].sharedWith;

      params.members.members[index] = (params.members.members[index] as Member).copyWith(
        sharedWith: {
          ...existedSharing,
          ...params.sharedWith.map(
            (e) => SharedMemberEntity(
              name: e.name,
              id: e.id,
            ),
          ),
        }.toList(),
      );
    }

    return params.members;
  }
}
