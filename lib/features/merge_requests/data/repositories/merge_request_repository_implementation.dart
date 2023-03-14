import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/local/merge_request_local_datasource_impl.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/merge_requests_datasource.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/remote/merge_request_implementation.dart';
import 'package:git_statistic/features/merge_requests/domain/entities/merge_request_entity.dart';
import 'package:git_statistic/features/merge_requests/domain/entities/request_entity.dart';
import 'package:git_statistic/features/merge_requests/domain/repository/merge_request_repository.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';

class MergeRequestRepositoryImplementation implements IMergeRequestRepository {
  MergeRequestRepositoryImplementation()
      : remoteDataSource = locator<MergeRequestDataSourceImplementation>(),
        localDataSource = locator<MergeRequestLocalDatasourceImpl>();

  final IMergeRequestDataSource remoteDataSource;
  final IMergeRequestDataSource localDataSource;

  @override
  Future<List<MergeRequestEntity>> getMergeRequests(
    RequestEntity request,
  ) async {
    return remoteDataSource.getMergeRequests(request);
  }

  @override
  MembersEntity getSavedMembers() {
    return localDataSource.getSavedMembers();
  }

  @override
  int? getTrackedProjectId() {
    return localDataSource.getTrackedProjectId();
  }
}
