import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:git_statistic/features/onboarding/domain/repository/onboarding_repository.dart';

class OnboardingCompletedUsecase implements UseCase<bool, NoParams> {
  OnboardingCompletedUsecase() : repository = locator<OnboardingRepositoryImpl>();

  final OnboardingRepository repository;

  @override
  bool call(NoParams _) {
    return repository.onboardingPassed();
  }
}
