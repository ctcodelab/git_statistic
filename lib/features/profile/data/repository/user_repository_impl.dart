import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/features/profile/data/datasource/local/user_local_datasource.dart';
import 'package:iqvia_kpi/features/profile/data/datasource/remote/user_remote_datasource.dart';
import 'package:iqvia_kpi/features/profile/data/datasource/user_datasource.dart';
import 'package:iqvia_kpi/features/profile/domain/enteties/user_entity.dart';
import 'package:iqvia_kpi/features/profile/domain/repository/user_repository.dart';

class UserRepository implements IUserRepository {
  UserRepository()
      : remoteDatasource = locator<UserRemoteDataSource>(),
        localDatasource = locator<UserLocalDatasource>();

  final IUserDatasource remoteDatasource;
  final IUserDatasource localDatasource;

  @override
  Future<UserEntity> getUser() async {
    return remoteDatasource.getUser();
  }

  @override
  Future<void> logout() async {
    localDatasource.logout();
  }
}
