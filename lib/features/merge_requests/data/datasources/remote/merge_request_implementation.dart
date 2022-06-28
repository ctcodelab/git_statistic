import 'package:iqvia_kpi/core/services/git_service.dart';
import 'package:iqvia_kpi/core/services/gitlab_service.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/features/merge_requests/data/datasources/merge_requests_datasource.dart';
import 'package:iqvia_kpi/features/merge_requests/data/models/merge_request.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entetties/request_entity.dart';

class MergeRequestDataSourceImplementation implements IMergeRequestDataSource {
  MergeRequestDataSourceImplementation()
      : gitService = locator<GitLabService>();

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
}
