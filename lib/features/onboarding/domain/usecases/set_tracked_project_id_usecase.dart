import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:iqvia_kpi/features/onboarding/domain/repository/onboarding_repository.dart';

class SetTrackedProjectIdUseCase implements UseCase<void, int?> {
  SetTrackedProjectIdUseCase()
      : repository = locator<OnboardingRepositoryImpl>();

  final OnboardingRepository repository;

  @override
  void call(int? params) {
    repository.setTrackedProjectId(params);
  }
}
