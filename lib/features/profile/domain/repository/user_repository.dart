import 'package:iqvia_kpi/features/profile/domain/enteties/user_entity.dart';

abstract class IUserRepository {
  Future<UserEntity> getUser();

  Future<void> logout();
}
