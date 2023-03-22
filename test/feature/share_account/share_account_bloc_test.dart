import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:git_statistic/core/services/hive/hive_service_imp.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/local/merge_request_local_datasource_impl.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/remote/merge_request_implementation.dart';
import 'package:git_statistic/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/get_saved_members_usecase.dart';
import 'package:git_statistic/features/onboarding/data/datasource/local/onboarding_local_datasource_impl.dart';
import 'package:git_statistic/features/onboarding/data/datasource/remote/onboarding_remote_datasource_iml.dart';
import 'package:git_statistic/features/onboarding/data/models/member.dart';
import 'package:git_statistic/features/onboarding/data/models/members.dart';
import 'package:git_statistic/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_selected_project_members.dart';
import 'package:git_statistic/features/share_account/domain/usecases/update_shared_members_usecase.dart';
import 'package:git_statistic/features/share_account/presentation/bloc/share_account_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock.dart';

void main() {
  late final MockHiveBox hiveBox;
  late final MockGitLabService gitLabService;
  late final MembersEntity members;

  setUpAll(() {
    hiveBox = MockHiveBox();
    gitLabService = MockGitLabService();

    locator.registerLazySingleton(() => HiveServiceImpl(hiveBox));

    locator.registerFactory(() => GetSavedMembersUseCase());
    locator.registerFactory(() => SetSelectedProjectMembers());
    locator.registerFactory(() => UpdateSharedMembersUsecase());
    locator.registerFactory(() => MergeRequestDataSourceImplementation());
    locator.registerFactory(() => MergeRequestLocalDatasourceImpl());
    locator.registerFactory(() => MergeRequestRepositoryImplementation());
    locator.registerFactory(() => OnboardingLocalDatasourceImpl());
    locator.registerFactory(() => OnboardingRemoteDatasourceImpl());
    locator.registerFactory(() => OnboardingRepositoryImpl());

    locator.registerLazySingleton(() => MockGitLab());
    locator.registerLazySingleton<GitLabService>(() => gitLabService);

    members = Members(
      members: [
        Member(
          id: 1,
          avatarUrl: 'avatarUrl',
          name: 'Dev 1',
          state: 'active',
          username: 'dev1',
        ),
      ],
    );
  });

  blocTest<ShareAccountBloc, ShareAccountState>(
    'fetch event',
    build: () => ShareAccountBloc(onComplete: () {}),
    setUp: () {
      when(() => hiveBox.get(HiveServiceImpl.selectedProjectMembers)).thenReturn(members);
    },
    act: (bloc) => bloc.add(const ShareAccountEvent.fetch()),
    skip: 1,
    expect: () => [],
  );
}
