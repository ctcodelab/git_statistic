import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/profile/data/repository/user_repository_impl.dart';
import 'package:iqvia_kpi/features/profile/domain/enteties/user_entity.dart';
import 'package:iqvia_kpi/features/profile/domain/repository/user_repository.dart';

class GetUserUsecase implements UseCase<Future<UserEntity>, NoParams> {
  GetUserUsecase() : repository = locator<UserRepository>();

  final IUserRepository repository;

  @override
  Future<UserEntity> call(NoParams params) async {
    return repository.getUser();
  }
}
