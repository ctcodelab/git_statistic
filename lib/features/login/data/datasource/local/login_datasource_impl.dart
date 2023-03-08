import 'package:git_statistic/core/services/hive/hive_service.dart';
import 'package:git_statistic/core/services/hive/secured_hive_service_impl.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/login/data/datasource/login_datasource.dart';

class LoginDataSourceImpl implements ILoginDataSource {
  LoginDataSourceImpl() : hiveService = locator<SecuredHiveServiceImpl>();

  final HiveService hiveService;

  @override
  String? token() {
    return hiveService.getValue(SecuredHiveServiceImpl.tokenKey);
  }

  @override
  void saveToken(String token) {
    hiveService.setValue(SecuredHiveServiceImpl.tokenKey, token);
  }
}
