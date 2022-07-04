import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/login/data/repositories/login_repository_impl.dart';
import 'package:iqvia_kpi/features/login/domain/repository/login_repository.dart';

class SaveLoginTokenUsecase implements UseCase<void, String> {
  SaveLoginTokenUsecase() : repository = locator<LoginRepositoryImpl>();

  final ILoginRepository repository;

  @override
  void call(String token) {
    repository.saveToken(token);
  }
}
