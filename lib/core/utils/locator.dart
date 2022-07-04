import 'package:get_it/get_it.dart';
import 'package:iqvia_kpi/features/login/data/datasource/local/login_datasource_impl.dart';
import 'package:iqvia_kpi/features/login/data/repositories/login_repository_impl.dart';
import 'package:iqvia_kpi/features/login/domain/usecases/login_needed_usecase.dart';
import 'package:iqvia_kpi/features/login/domain/usecases/save_login_token_usecase.dart';
import 'package:iqvia_kpi/features/login/domain/usecases/setup_git_service_usecase.dart';
import 'package:iqvia_kpi/features/merge_requests/data/datasources/local/merge_request_local_datasource_impl.dart';
import 'package:iqvia_kpi/features/merge_requests/data/datasources/remote/merge_request_implementation.dart';
import 'package:iqvia_kpi/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/get_saved_members_usecase.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/get_tracked_project_id.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/merge_request_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/data/datasource/local/onboarding_local_datasource_impl.dart';
import 'package:iqvia_kpi/features/onboarding/data/datasource/remote/onboarding_remote_datasource_iml.dart';
import 'package:iqvia_kpi/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/membership_projects_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/onboarding_completed_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/project_members_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/set_onboarding_complete.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/set_selected_project_members.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/set_tracked_project_id_usecase.dart';
import 'package:iqvia_kpi/features/profile/data/datasource/local/user_local_datasource.dart';
import 'package:iqvia_kpi/features/profile/data/datasource/remote/user_remote_datasource.dart';
import 'package:iqvia_kpi/features/profile/data/repository/user_repository_impl.dart';
import 'package:iqvia_kpi/features/profile/domain/usecase/get_user_usecase.dart';
import 'package:iqvia_kpi/features/profile/domain/usecase/logout_usecase.dart';

final locator = GetIt.instance;

void setUpLocator() {
  locator.registerFactory(() => MergeRequestDataSourceImplementation());
  locator.registerFactory(() => MergeRequestLocalDatasourceImpl());
  locator.registerFactory(() => MergeRequestRepositoryImplementation());
  locator.registerFactory(() => MergeRequestUsecase());
  locator.registerFactory(() => GetSavedMembersUseCase());
  locator.registerFactory(() => GetTrackedProjectIdUseCase());

  locator.registerFactory(() => LoginDataSourceImpl());
  locator.registerFactory(() => LoginRepositoryImpl());
  locator.registerFactory(() => LoginNeededUseCase());
  locator.registerFactory(() => SaveLoginTokenUsecase());
  locator.registerFactory(() => SetupGitServiceUsecase());

  locator.registerFactory(() => OnboardingLocalDatasourceImpl());
  locator.registerFactory(() => OnboardingRemoteDatasourceImpl());
  locator.registerFactory(() => OnboardingRepositoryImpl());
  locator.registerFactory(() => OnboardingCompletedUsecase());
  locator.registerFactory(() => MembershipProjectsUsecase());
  locator.registerFactory(() => SetTrackedProjectIdUseCase());
  locator.registerFactory(() => ProjectMembersUsecase());
  locator.registerFactory(() => SetSelectedProjectMembers());
  locator.registerFactory(() => SetOnboardingComplete());

  locator.registerFactory(() => UserRemoteDataSource());
  locator.registerFactory(() => UserLocalDatasource());
  locator.registerFactory(() => UserRepository());
  locator.registerFactory(() => GetUserUsecase());
  locator.registerFactory(() => LogoutUsecase());
}
