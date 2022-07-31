import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/member_entity.dart';
import 'package:iqvia_kpi/features/share_account/domain/entities/shared_member_entity.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@unfreezed
class Member with _$Member implements MemberEntity {
  factory Member({
    required int id,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    required String name,
    required String state,
    required String username,
    @JsonKey(ignore: true) @Default([]) List<SharedMemberEntity> sharedWith,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
