import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/login/data/repositories/login_repository_impl.dart';
import 'package:git_statistic/features/login/domain/repository/login_repository.dart';

class LoginNeededUseCase implements UseCase<String?, NoParams> {
  LoginNeededUseCase() : repository = locator<LoginRepositoryImpl>();

  final ILoginRepository repository;

  @override
  String? call(_) {
    return repository.token();
  }
}
