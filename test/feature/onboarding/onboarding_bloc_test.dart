import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:git_statistic/core/services/hive/hive_service_imp.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/local/merge_request_local_datasource_impl.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/remote/merge_request_implementation.dart';
import 'package:git_statistic/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/get_tracked_project_id.dart';
import 'package:git_statistic/features/onboarding/data/datasource/local/onboarding_local_datasource_impl.dart';
import 'package:git_statistic/features/onboarding/data/datasource/remote/onboarding_remote_datasource_iml.dart';
import 'package:git_statistic/features/onboarding/data/models/member.dart';
import 'package:git_statistic/features/onboarding/data/models/members.dart';
import 'package:git_statistic/features/onboarding/data/models/project.dart';
import 'package:git_statistic/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/membership_projects_usecase.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/onboarding_completed_usecase.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/project_members_usecase.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_onboarding_complete.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_selected_project_members.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_tracked_project_id_usecase.dart';
import 'package:git_statistic/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:git_statistic/features/share_account/domain/usecases/update_shared_members_usecase.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock.dart';

void main() {
  late final MockHiveBox hiveBox;
  late final MockGitLabService gitLabService;

  const projectId = 10;

  setUpAll(() {
    hiveBox = MockHiveBox();
    gitLabService = MockGitLabService();

    locator.registerLazySingleton(() => HiveServiceImpl(hiveBox));

    locator.registerFactory(() => GetTrackedProjectIdUseCase());
    locator.registerFactory(() => MergeRequestRepositoryImplementation());
    locator.registerFactory(() => MergeRequestDataSourceImplementation());
    locator.registerFactory(() => MergeRequestLocalDatasourceImpl());

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

    locator.registerLazySingleton(() => MockGitLab());
    locator.registerLazySingleton<GitLabService>(() => gitLabService);

    when(() => gitLabService.getMembershipProjects()).thenAnswer(
      (_) => Future.value(
        [
          {
            'id': 1,
            'name_with_namespace': 'ns / project',
            'avatar_url': 'url_1',
            'last_activity_at': '2023-03-17T21:41:05.179Z',
          },
          {
            'id': 2,
            'name_with_namespace': 'ns / project 2',
            'avatar_url': 'url_2',
            'last_activity_at': '2023-03-18T21:41:05.179Z',
          },
        ],
      ),
    );
    when(() => gitLabService.getProjectMembers(projectId: projectId)).thenAnswer(
      (_) => Future.value(
        [
          {
            'id': 1,
            'avatar_url': 'url',
            'name': 'Dev 1',
            'state': 'active',
            'username': 'dev1',
          },
          {
            'id': 2,
            'avatar_url': 'url',
            'name': 'Dev 2',
            'state': 'active',
            'username': 'dev2',
          },
          {
            'id': 3,
            'avatar_url': 'url',
            'name': 'Dev 3',
            'state': 'active',
            'username': 'dev3',
          },
          {
            'id': 4,
            'avatar_url': 'url',
            'name': 'Dev 4',
            'state': 'blocked',
            'username': 'dev4',
          },
        ],
      ),
    );
  });

  blocTest<OnboardingBloc, OnboardingState>(
    'Onboarding not completed. Project not selected. Projects sorted by last activity date',
    build: () => OnboardingBloc(),
    setUp: () {
      when(() => hiveBox.get(HiveServiceImpl.onboardingPassed)).thenReturn(null);
      when(() => hiveBox.get(HiveServiceImpl.trackedProjectId)).thenReturn(null);
    },
    act: (bloc) => bloc.add(const OnboardingEvent.checkConditions()),
    expect: () => [
      const OnboardingState.projectsLoading(),
      OnboardingState.yourProjects(
        projects: [
          Project(
            id: 2,
            nameWithNamespace: 'ns / project 2',
            avatarUrl: 'url_2',
            lastActivityAt: DateTime.parse('2023-03-18T21:41:05.179Z'),
          ),
          Project(
            id: 1,
            nameWithNamespace: 'ns / project',
            avatarUrl: 'url_1',
            lastActivityAt: DateTime.parse('2023-03-17T21:41:05.179Z'),
          ),
        ],
      )
    ],
  );

  blocTest<OnboardingBloc, OnboardingState>(
    'Onboarding not completed. Project selected',
    build: () => OnboardingBloc(),
    setUp: () {
      when(() => hiveBox.get(HiveServiceImpl.onboardingPassed)).thenReturn(null);
      when(() => hiveBox.put(HiveServiceImpl.trackedProjectId, projectId)).thenAnswer((_) => Future.value());
      when(() => hiveBox.get(HiveServiceImpl.trackedProjectId)).thenReturn(projectId);
    },
    act: (bloc) => bloc.add(const OnboardingEvent.checkConditions()),
    expect: () => [
      const OnboardingState.membersLoading(),
      OnboardingState.members(
        members: Members(
          members: [
            Member(
              id: 1,
              avatarUrl: 'url',
              name: 'Dev 1',
              state: 'active',
              username: 'dev1',
            ),
            Member(
              id: 2,
              avatarUrl: 'url',
              name: 'Dev 2',
              state: 'active',
              username: 'dev2',
            ),
            Member(
              id: 3,
              avatarUrl: 'url',
              name: 'Dev 3',
              state: 'active',
              username: 'dev3',
            )
          ],
        ),
      ),
    ],
  );

  blocTest<OnboardingBloc, OnboardingState>(
    'Onboarding completed',
    build: () => OnboardingBloc(),
    setUp: () {
      when(() => hiveBox.get(HiveServiceImpl.onboardingPassed)).thenReturn(true);
      when(() => hiveBox.get(HiveServiceImpl.trackedProjectId)).thenReturn(projectId);
    },
    act: (bloc) => bloc.add(const OnboardingEvent.checkConditions()),
    expect: () => [const OnboardingState.completed()],
  );

  blocTest<OnboardingBloc, OnboardingState>(
    'Onboarding myProject event',
    build: () => OnboardingBloc(),
    act: (bloc) => bloc.add(const OnboardingEvent.myProjects()),
    expect: () => [
      const OnboardingState.projectsLoading(),
      OnboardingState.yourProjects(
        projects: [
          Project(
            id: 2,
            nameWithNamespace: 'ns / project 2',
            avatarUrl: 'url_2',
            lastActivityAt: DateTime.parse('2023-03-18T21:41:05.179Z'),
          ),
          Project(
            id: 1,
            nameWithNamespace: 'ns / project',
            avatarUrl: 'url_1',
            lastActivityAt: DateTime.parse('2023-03-17T21:41:05.179Z'),
          ),
        ],
      ),
    ],
  );

  blocTest<OnboardingBloc, OnboardingState>(
    'Onboarding projectSelected event',
    build: () => OnboardingBloc(),
    setUp: () {
      when(() => hiveBox.get(HiveServiceImpl.trackedProjectId)).thenReturn(projectId);
      when(() => hiveBox.put(HiveServiceImpl.trackedProjectId, projectId)).thenAnswer((_) => Future.value());
    },
    act: (bloc) => bloc.add(const OnboardingEvent.projectSelected(projectId: projectId)),
    expect: () => [
      const OnboardingState.membersLoading(),
      OnboardingState.members(
        members: Members(
          members: [
            Member(
              id: 1,
              avatarUrl: 'url',
              name: 'Dev 1',
              state: 'active',
              username: 'dev1',
            ),
            Member(
              id: 2,
              avatarUrl: 'url',
              name: 'Dev 2',
              state: 'active',
              username: 'dev2',
            ),
            Member(
              id: 3,
              avatarUrl: 'url',
              name: 'Dev 3',
              state: 'active',
              username: 'dev3',
            )
          ],
        ),
      ),
    ],
  );

  blocTest<OnboardingBloc, OnboardingState>(
    'Onboarding membersSelected event',
    build: () => OnboardingBloc(),
    setUp: () {
      when(() => hiveBox.put(HiveServiceImpl.selectedProjectMembers, any())).thenAnswer((_) => Future.value());
    },
    act: (bloc) => bloc.add(
      OnboardingEvent.membersSelected(
        members: Members(
          members: [
            Member(
              id: 1,
              avatarUrl: 'url',
              name: 'Dev 1',
              state: 'active',
              username: 'dev1',
            ),
          ],
        ),
      ),
    ),
    expect: () => [const OnboardingState.sharedMembers()],
  );

  blocTest<OnboardingBloc, OnboardingState>(
    'Onboarding complete event',
    build: () => OnboardingBloc(),
    setUp: () {
      when(() => hiveBox.put(HiveServiceImpl.onboardingPassed, any())).thenAnswer((_) => Future.value());
    },
    act: (bloc) => bloc.add(const OnboardingEvent.complete()),
    expect: () => [const OnboardingState.completed()],
  );
}
