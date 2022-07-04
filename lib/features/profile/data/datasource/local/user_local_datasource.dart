import 'package:iqvia_kpi/core/services/hive/hive_service.dart';
import 'package:iqvia_kpi/core/services/hive/hive_service_imp.dart';
import 'package:iqvia_kpi/core/services/hive/secured_hive_service_impl.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/features/profile/data/datasource/user_datasource.dart';
import 'package:iqvia_kpi/features/profile/data/models/user.dart';

class UserLocalDatasource implements IUserDatasource {
  UserLocalDatasource()
      : hiveService = locator<HiveServiceImpl>(),
        securedHiveService = locator<SecuredHiveServiceImpl>();

  final HiveService hiveService;
  final HiveService securedHiveService;

  @override
  Future<User> getUser() {
    throw UnimplementedError('Use the remote datasource.');
  }

  @override
  Future<void> logout() async {
    await Future.value([hiveService.clear(), securedHiveService.clear()]);
  }
}
