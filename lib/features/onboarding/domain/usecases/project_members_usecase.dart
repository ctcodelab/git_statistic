import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/onboarding/data/models/members.dart';
import 'package:git_statistic/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:git_statistic/features/onboarding/domain/repository/onboarding_repository.dart';

class ProjectMembersUsecase extends UseCase<Future<Members>, int> {
  ProjectMembersUsecase() : repository = locator<OnboardingRepositoryImpl>();

  final OnboardingRepository repository;

  @override
  Future<Members> call(int params) {
    return repository.getProjectMembers(params);
  }
}
