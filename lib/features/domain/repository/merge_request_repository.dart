import 'package:iqvia_kpi/features/domain/entetties/merge_request_entity.dart';
import 'package:iqvia_kpi/features/domain/entetties/request_entity.dart';

abstract class IMergeRequestRepository {
  Future<List<MergeRequestEntity>> getMergeRequests(RequestEntity request);
}
