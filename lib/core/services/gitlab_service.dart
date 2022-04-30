import 'package:gitlab/gitlab.dart';
import 'package:iqvia_kpi/core/services/git_service.dart';
import 'package:iqvia_kpi/core/utils/types.dart';

class GitLabService implements GitService {
  const GitLabService(this.gitLab);

  final GitLab gitLab;

  @override
  Future<List<JsonMap>> getMergeRequests({
    required int projectId,
    int perPage = 100,
  }) async {
    final project = gitLab.project(projectId);
    final mrs = await project.mergeRequests.list(perPage: perPage);

    return Future.wait(
      mrs.map(
        (mr) async {
          final discussions = await IssueDiscussionsApi(
            gitLab,
            project,
            mr['iid'],
          ).list();

          final comments = <JsonMap>[];
          for (final discussion in discussions) {
            for (final note in discussion['notes']) {
              if (!note['system']) {
                comments.add(note);
              }
            }
          }

          mr['discussion'] = comments;
          return mr;
        },
      ).toList(),
    );
  }
}
