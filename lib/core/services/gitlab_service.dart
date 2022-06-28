import 'package:gitlab/gitlab.dart';
import 'package:iqvia_kpi/core/services/git_service.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/types.dart';

class GitLabService implements GitService {
  GitLabService() : gitLab = locator<GitLab>();

  final GitLab gitLab;

  @override
  Future<List<JsonMap>> getMergeRequests({
    required int projectId,
    int perPage = 100,
  }) async {
    final project = gitLab.project(projectId);
    return project.mergeRequests.list(perPage: perPage);
  }
}
