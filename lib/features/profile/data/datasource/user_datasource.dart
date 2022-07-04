import 'package:iqvia_kpi/features/profile/data/models/user.dart';

abstract class IUserDatasource {
  Future<User> getUser();

  Future<void> logout();
}
