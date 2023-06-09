import 'package:git_statistic/core/services/git/git_service.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/merge_requests_datasource.dart';
import 'package:git_statistic/features/merge_requests/data/models/merge_request.dart';
import 'package:git_statistic/features/merge_requests/domain/entities/request_entity.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';

class MergeRequestDataSourceImplementation implements IMergeRequestDataSource {
  MergeRequestDataSourceImplementation() : gitService = locator<GitLabService>();

  final GitService gitService;

  @override
  Future<List<MergeRequest>> getMergeRequests(RequestEntity request) async {
    final mrs = await gitService.getMergeRequests(projectId: request.projectId);

    return mrs
        .map((json) => MergeRequest.fromJson(json))
        .where(
          (element) =>
              element.createdAt.isAfter(request.createdAt) &&
              element.createdAt.isBefore(request.createdBefore) &&
              (element.state == 'opened' || element.state == 'merged'),
        )
        .toList();
  }

  @override
  MembersEntity getSavedMembers() {
    throw UnimplementedError('Use the local datasource.');
  }

  @override
  int getTrackedProjectId() {
    throw UnimplementedError('Use the local datasource.');
  }
}
