import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/profile/data/repository/user_repository_impl.dart';
import 'package:git_statistic/features/profile/domain/repository/user_repository.dart';

class LogoutUsecase implements UseCase<void, NoParams> {
  LogoutUsecase() : repository = locator<UserRepository>();

  final IUserRepository repository;

  @override
  Future<void> call(_) async {
    await repository.logout();
  }
}
