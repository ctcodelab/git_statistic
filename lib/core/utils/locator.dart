import 'package:get_it/get_it.dart';
import 'package:git_statistic/features/login/data/datasource/local/login_datasource_impl.dart';
import 'package:git_statistic/features/login/data/repositories/login_repository_impl.dart';
import 'package:git_statistic/features/login/domain/usecases/login_needed_usecase.dart';
import 'package:git_statistic/features/login/domain/usecases/save_login_token_usecase.dart';
import 'package:git_statistic/features/login/domain/usecases/setup_git_service_usecase.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/local/merge_request_local_datasource_impl.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/remote/merge_request_implementation.dart';
import 'package:git_statistic/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/filter_mr_for_member_usecase.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/get_saved_members_usecase.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/get_tracked_project_id.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/merge_request_usecase.dart';
import 'package:git_statistic/features/onboarding/data/datasource/local/onboarding_local_datasource_impl.dart';
import 'package:git_statistic/features/onboarding/data/datasource/remote/onboarding_remote_datasource_iml.dart';
import 'package:git_statistic/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/membership_projects_usecase.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/onboarding_completed_usecase.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/project_members_usecase.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_onboarding_complete.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_selected_project_members.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_tracked_project_id_usecase.dart';
import 'package:git_statistic/features/profile/data/datasource/local/user_local_datasource.dart';
import 'package:git_statistic/features/profile/data/datasource/remote/user_remote_datasource.dart';
import 'package:git_statistic/features/profile/data/repository/user_repository_impl.dart';
import 'package:git_statistic/features/profile/domain/usecase/get_user_usecase.dart';
import 'package:git_statistic/features/profile/domain/usecase/logout_usecase.dart';
import 'package:git_statistic/features/share_account/domain/usecases/update_shared_members_usecase.dart';

final locator = GetIt.instance;

void setUpLocator() {
  locator.registerFactory(() => MergeRequestDataSourceImplementation());
  locator.registerFactory(() => MergeRequestLocalDatasourceImpl());
  locator.registerFactory(() => MergeRequestRepositoryImplementation());
  locator.registerFactory(() => MergeRequestUsecase());
  locator.registerFactory(() => GetSavedMembersUseCase());
  locator.registerFactory(() => GetTrackedProjectIdUseCase());
  locator.registerFactory(() => FilterMRForMemberUsecase());

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
  locator.registerFactory(() => UpdateSharedMembersUsecase());

  locator.registerFactory(() => UserRemoteDataSource());
  locator.registerFactory(() => UserLocalDatasource());
  locator.registerFactory(() => UserRepository());
  locator.registerFactory(() => GetUserUsecase());
  locator.registerFactory(() => LogoutUsecase());
}
