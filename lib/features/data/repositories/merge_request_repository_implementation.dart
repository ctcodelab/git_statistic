import 'package:iqvia_kpi/features/data/datasources/merge_requests_datasource.dart';
import 'package:iqvia_kpi/features/domain/entetties/merge_request_entity.dart';
import 'package:iqvia_kpi/features/domain/repository/merge_request_repository.dart';

class MergeRequestRepositoryImplementation implements IMergeRequestRepository {
  const MergeRequestRepositoryImplementation({
    required this.remoteDataSource,
  });

  final IMergeRequestDataSource remoteDataSource;

  @override
  Future<List<MergeRequestEntity>> getMergeRequests() async {
    return remoteDataSource.getMergeRequests();
  }
}
