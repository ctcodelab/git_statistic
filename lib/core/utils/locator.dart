import 'package:get_it/get_it.dart';
import 'package:gitlab/gitlab.dart';
import 'package:iqvia_kpi/core/services/gitlab_service.dart';
import 'package:iqvia_kpi/features/merge_requests/data/datasources/remote/merge_request_implementation.dart';
import 'package:iqvia_kpi/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/merge_request_usecase.dart';

final locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => MergeRequestDataSourceImplementation());
  locator.registerLazySingleton(() => MergeRequestRepositoryImplementation());
  locator.registerLazySingleton(() => MergeRequestUsecase());
  locator.registerFactory(
    () => GitLab('glpat-KUsnhRnQJELNpUdzXiM5', host: 'gitlab.ims.io'),
  );
  locator.registerFactory(() => GitLabService());
}
