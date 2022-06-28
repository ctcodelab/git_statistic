import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entetties/merge_request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entetties/request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/repository/merge_request_repository.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/usecase.dart';

class MergeRequestUsecase
    implements UseCase<MergeRequestEntity, RequestEntity> {
  MergeRequestUsecase()
      : repository = locator<MergeRequestRepositoryImplementation>();

  final IMergeRequestRepository repository;

  @override
  Future<List<MergeRequestEntity>> call(params) async {
    return repository.getMergeRequests(params);
  }
}
