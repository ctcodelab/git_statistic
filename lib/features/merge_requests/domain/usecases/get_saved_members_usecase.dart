import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:git_statistic/features/merge_requests/domain/repository/merge_request_repository.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';

class GetSavedMembersUseCase extends UseCase<MembersEntity, NoParams> {
  GetSavedMembersUseCase() : repository = locator<MergeRequestRepositoryImplementation>();

  final IMergeRequestRepository repository;

  @override
  MembersEntity call(NoParams params) {
    return repository.getSavedMembers();
  }
}
