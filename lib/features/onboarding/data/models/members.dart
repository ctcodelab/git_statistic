import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_statistic/features/onboarding/data/models/member.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';

part 'members.freezed.dart';

@freezed
class Members with _$Members implements MembersEntity {
  const Members._();

  const factory Members({
    required List<Member> members,
  }) = _Members;

  @override
  int get length => members.length;

  @override
  Member operator [](int index) => members[index];
}
