import 'package:iqvia_kpi/features/merge_requests/data/models/merge_request.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entetties/request_entity.dart';

abstract class IMergeRequestDataSource {
  Future<List<MergeRequest>> getMergeRequests(RequestEntity request);
}
