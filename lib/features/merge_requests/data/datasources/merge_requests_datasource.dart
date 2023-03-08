import 'package:git_statistic/features/merge_requests/data/models/merge_request.dart';
import 'package:git_statistic/features/merge_requests/domain/entities/request_entity.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';

abstract class IMergeRequestDataSource {
  Future<List<MergeRequest>> getMergeRequests(RequestEntity request);

  MembersEntity getSavedMembers();

  int? getTrackedProjectId();
}
