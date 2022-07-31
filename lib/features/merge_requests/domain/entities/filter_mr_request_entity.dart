import 'package:iqvia_kpi/features/merge_requests/domain/entities/merge_request_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/member_entity.dart';

class FilterMrRequestEntity {
  const FilterMrRequestEntity({required this.member, required this.mrs});

  final MemberEntity member;
  final List<MergeRequestEntity> mrs;
}
