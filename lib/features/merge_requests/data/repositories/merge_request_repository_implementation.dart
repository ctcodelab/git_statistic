import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/features/merge_requests/data/datasources/merge_requests_datasource.dart';
import 'package:iqvia_kpi/features/merge_requests/data/datasources/remote/merge_request_implementation.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entetties/merge_request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entetties/request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/repository/merge_request_repository.dart';

class MergeRequestRepositoryImplementation implements IMergeRequestRepository {
  MergeRequestRepositoryImplementation()
      : remoteDataSource = locator<MergeRequestDataSourceImplementation>();

  final IMergeRequestDataSource remoteDataSource;

  @override
  Future<List<MergeRequestEntity>> getMergeRequests(
    RequestEntity request,
  ) async {
    return remoteDataSource.getMergeRequests(request);
  }
}
