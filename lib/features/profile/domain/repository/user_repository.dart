import 'package:git_statistic/features/profile/domain/enteties/user_entity.dart';

abstract class IUserRepository {
  Future<UserEntity> getUser();

  Future<void> logout();
}
