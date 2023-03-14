import 'package:git_statistic/features/profile/data/models/user.dart';

abstract class IUserDatasource {
  Future<User> getUser();

  Future<void> logout();
}
