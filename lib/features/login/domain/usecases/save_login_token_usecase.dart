import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/login/data/repositories/login_repository_impl.dart';
import 'package:git_statistic/features/login/domain/repository/login_repository.dart';

class SaveLoginTokenUsecase implements UseCase<void, String> {
  SaveLoginTokenUsecase() : repository = locator<LoginRepositoryImpl>();

  final ILoginRepository repository;

  @override
  void call(String token) {
    repository.saveToken(token);
  }
}
