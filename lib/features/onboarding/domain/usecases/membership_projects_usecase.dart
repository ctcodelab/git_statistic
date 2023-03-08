import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:git_statistic/features/onboarding/domain/entities/project_entity.dart';
import 'package:git_statistic/features/onboarding/domain/repository/onboarding_repository.dart';

class MembershipProjectsUsecase implements UseCase<Future<List<ProjectEntity>>, NoParams> {
  MembershipProjectsUsecase() : repository = locator<OnboardingRepositoryImpl>();

  final OnboardingRepository repository;

  @override
  Future<List<ProjectEntity>> call(NoParams _) async {
    return await repository.membershipProjects()
      ..sort((a, b) => b.lastActivityAt.compareTo(a.lastActivityAt));
  }
}
