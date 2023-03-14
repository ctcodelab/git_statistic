import 'package:git_statistic/core/services/git/git_service.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/profile/data/datasource/user_datasource.dart';
import 'package:git_statistic/features/profile/data/models/user.dart';

class UserRemoteDataSource implements IUserDatasource {
  UserRemoteDataSource() : gitService = locator<GitLabService>();

  final GitService gitService;

  @override
  Future<User> getUser() async {
    final user = await gitService.getUser();
    return User.fromJson(user);
  }

  @override
  Future<void> logout() {
    throw UnimplementedError('Use the local datastore.');
  }
}
