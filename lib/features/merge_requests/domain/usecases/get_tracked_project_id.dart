import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:git_statistic/features/merge_requests/domain/repository/merge_request_repository.dart';

class GetTrackedProjectIdUseCase implements UseCase<int?, NoParams> {
  GetTrackedProjectIdUseCase() : repository = locator<MergeRequestRepositoryImplementation>();

  final IMergeRequestRepository repository;

  @override
  int? call(NoParams params) {
    return repository.getTrackedProjectId();
  }
}
