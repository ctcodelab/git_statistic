import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/features/login/data/datasource/local/login_datasource_impl.dart';
import 'package:iqvia_kpi/features/login/data/datasource/login_datasource.dart';
import 'package:iqvia_kpi/features/login/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements ILoginRepository {
  LoginRepositoryImpl() : dataSource = locator<LoginDataSourceImpl>();

  final ILoginDataSource dataSource;

  @override
  String? token() {
    return dataSource.token();
  }

  @override
  void saveToken(String token) {
    dataSource.saveToken(token);
  }
}
