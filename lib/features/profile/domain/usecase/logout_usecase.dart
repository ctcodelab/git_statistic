import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/profile/data/repository/user_repository_impl.dart';
import 'package:iqvia_kpi/features/profile/domain/repository/user_repository.dart';

class LogoutUsecase implements UseCase<void, NoParams> {
  LogoutUsecase() : repository = locator<UserRepository>();

  final IUserRepository repository;

  @override
  Future<void> call(_) async {
    await repository.logout();
  }
}
