import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/profile/data/repository/user_repository_impl.dart';
import 'package:git_statistic/features/profile/domain/enteties/user_entity.dart';
import 'package:git_statistic/features/profile/domain/repository/user_repository.dart';

class GetUserUsecase implements UseCase<Future<UserEntity>, NoParams> {
  GetUserUsecase() : repository = locator<UserRepository>();

  final IUserRepository repository;

  @override
  Future<UserEntity> call(NoParams params) async {
    return repository.getUser();
  }
}
