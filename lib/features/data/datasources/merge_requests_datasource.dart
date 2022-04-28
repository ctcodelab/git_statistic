import 'package:iqvia_kpi/features/data/models/merge_request.dart';

abstract class IMergeRequestDataSource {
  Future<List<MergeRequest>> getMergeRequests();
}
