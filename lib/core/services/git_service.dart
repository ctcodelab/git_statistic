import 'package:iqvia_kpi/core/utils/types.dart';

abstract class GitService {
  Future<List<JsonMap>> getMergeRequests({
    required int projectId,
    int perPage = 100,
  });
}
