import 'package:gitlab/gitlab.dart';
import 'package:git_statistic/core/services/git/git_service.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/types.dart';

class GitLabService implements GitService {
  GitLabService() : gitLab = locator<GitLab>();

  final GitLab gitLab;

  @override
  Future<List<JsonMap>> getMergeRequests({
    required int projectId,
    int perPage = 100,
  }) async {
    final project = gitLab.project;
    final response = await project.projectMergeRequests(
      projectId: projectId,
      queryParameters: {'per_page': perPage},
    );

    return response.data.cast<JsonMap>();
  }

  @override
  Future<List<JsonMap>> getMembershipProjects() async {
    final project = gitLab.project;
    final response = await project.membershipProjects(
      queryParameters: {'per_page': 100},
    );

    return response.data.cast<JsonMap>();
  }

  @override
  Future<List<JsonMap>> getProjectMembers({required int projectId}) async {
    final project = gitLab.project;
    final response = await project.projectMembers(
      projectId: projectId,
      queryParameters: {'per_page': 100},
    );

    return response.data.cast<JsonMap>();
  }

  @override
  Future<JsonMap> getUser() async {
    final user = gitLab.user;
    final response = await user.get();

    return response.data;
  }
}
