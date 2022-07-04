import 'package:iqvia_kpi/features/merge_requests/domain/entities/merge_request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entities/request_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';

abstract class IMergeRequestRepository {
  Future<List<MergeRequestEntity>> getMergeRequests(RequestEntity request);

  MembersEntity getSavedMembers();

  int? getTrackedProjectId();
}
