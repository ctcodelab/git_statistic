import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/project_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/repository/onboarding_repository.dart';

class MembershipProjectsUsecase
    implements UseCase<Future<List<ProjectEntity>>, NoParams> {
  MembershipProjectsUsecase()
      : repository = locator<OnboardingRepositoryImpl>();

  final OnboardingRepository repository;

  @override
  Future<List<ProjectEntity>> call(NoParams _) async {
    return await repository.membershipProjects()
      ..sort((a, b) => b.lastActivityAt.compareTo(a.lastActivityAt));
  }
}
