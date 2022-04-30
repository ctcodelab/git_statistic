import 'package:iqvia_kpi/features/data/models/merge_request.dart';
import 'package:iqvia_kpi/features/domain/entetties/request_entity.dart';

abstract class IMergeRequestDataSource {
  Future<List<MergeRequest>> getMergeRequests(RequestEntity request);
}
