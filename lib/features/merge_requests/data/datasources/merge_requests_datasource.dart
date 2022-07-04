import 'package:iqvia_kpi/features/merge_requests/data/models/merge_request.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entities/request_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';

abstract class IMergeRequestDataSource {
  Future<List<MergeRequest>> getMergeRequests(RequestEntity request);

  MembersEntity getSavedMembers();

  int? getTrackedProjectId();
}
