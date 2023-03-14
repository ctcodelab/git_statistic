import 'package:git_statistic/core/utils/types.dart';

abstract class GitService {
  Future<List<JsonMap>> getMergeRequests({
    required int projectId,
    int perPage = 100,
  });

  Future<List<JsonMap>> getMembershipProjects();

  Future<List<JsonMap>> getProjectMembers({required int projectId});

  Future<JsonMap> getUser();
}
