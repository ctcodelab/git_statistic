import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';
import 'package:git_statistic/features/onboarding/domain/repository/onboarding_repository.dart';

class SetSelectedProjectMembers implements UseCase<void, MembersEntity> {
  SetSelectedProjectMembers() : repository = locator<OnboardingRepositoryImpl>();

  final OnboardingRepository repository;

  @override
  void call(MembersEntity params) {
    repository.setSelectedProjectMembers(params);
  }
}
