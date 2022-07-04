import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entities/merge_request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entities/request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/repository/merge_request_repository.dart';

class MergeRequestUsecase
    implements UseCase<Future<List<MergeRequestEntity>>, RequestEntity> {
  MergeRequestUsecase()
      : repository = locator<MergeRequestRepositoryImplementation>();

  final IMergeRequestRepository repository;

  @override
  Future<List<MergeRequestEntity>> call(params) async {
    return repository.getMergeRequests(params);
  }
}
