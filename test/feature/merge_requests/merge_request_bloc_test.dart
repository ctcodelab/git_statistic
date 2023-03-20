import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:git_statistic/core/services/hive/hive_service_imp.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/local/merge_request_local_datasource_impl.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/remote/merge_request_implementation.dart';
import 'package:git_statistic/features/merge_requests/data/models/author.dart';
import 'package:git_statistic/features/merge_requests/data/models/merge_request.dart';
import 'package:git_statistic/features/merge_requests/data/repositories/merge_request_repository_implementation.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/filter_mr_for_member_usecase.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/get_saved_members_usecase.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/get_tracked_project_id.dart';
import 'package:git_statistic/features/merge_requests/domain/usecases/merge_request_usecase.dart';
import 'package:git_statistic/features/merge_requests/presentation/bloc/merge_request_bloc.dart';
import 'package:git_statistic/features/onboarding/data/models/member.dart';
import 'package:git_statistic/features/onboarding/data/models/members.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';
import 'package:git_statistic/features/share_account/domain/entities/shared_member_entity.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock.dart';

void main() {
  late final MockHiveBox hiveBox;
  late final MembersEntity members;
  late final SharedMemberEntity sharedMember;
  late final MockGitLabService gitLabService;

  final startDate = DateTime(2023, 3, 13);
  final endDate = DateTime(2023, 3, 19);

  const projectId = 10;

  setUpAll(() {
    hiveBox = MockHiveBox();
    gitLabService = MockGitLabService();

    locator.registerLazySingleton(() => HiveServiceImpl(hiveBox));

    locator.registerFactory(() => MergeRequestDataSourceImplementation());
    locator.registerFactory(() => MergeRequestLocalDatasourceImpl());
    locator.registerFactory(() => MergeRequestRepositoryImplementation());
    locator.registerFactory(() => MergeRequestUsecase());
    locator.registerFactory(() => GetSavedMembersUseCase());
    locator.registerFactory(() => GetTrackedProjectIdUseCase());
    locator.registerFactory(() => FilterMRForMemberUsecase());

    locator.registerLazySingleton(() => MockGitLab());
    locator.registerLazySingleton<GitLabService>(() => gitLabService);

    sharedMember = SharedMemberEntity(name: 'Dev 3', id: 3, recognitionKey: 'dev3');
    members = Members(
      members: [
        Member(
          id: 1,
          avatarUrl: 'avatarUrl',
          name: 'Dev 1',
          state: 'active',
          username: 'dev1',
          sharedWith: [sharedMember],
        ),
        Member(
          id: 2,
          avatarUrl: 'avatarUrl',
          name: 'Dev 2',
          state: 'active',
          username: 'dev2',
        ),
        Member(
          id: 3,
          avatarUrl: 'avatarUrl',
          name: 'Dev 3',
          state: 'active',
          username: 'dev3',
        ),
      ],
    );
  });

  blocTest<MergeRequestBloc, MergeRequestState>(
    'Fetch MRs with shared member functionality',
    build: () => MergeRequestBloc(),
    setUp: () {
      when(() => hiveBox.get(HiveServiceImpl.selectedProjectMembers)).thenReturn(members);
      when(() => gitLabService.getMergeRequests(projectId: projectId)).thenAnswer(
        (_) => Future.value([
          {
            'author': {'name': 'Dev 1', 'avatar_url': '', 'username': 'dev1'},
            'created_at': '2023-03-14T22:14:38.210Z',
            'draft': false,
            'iid': 1,
            'state': 'merged',
            'description': '',
          },
          {
            'author': {'name': 'Dev 1', 'avatar_url': '', 'username': 'dev1'},
            'created_at': '2023-03-15T22:14:38.210Z',
            'draft': false,
            'iid': 2,
            'state': 'opened',
            'description': 'description with recognition key for the Dev 3 dev3',
          },
          {
            'author': {'name': 'Dev 2', 'avatar_url': '', 'username': 'dev2'},
            'created_at': '2023-03-16T22:14:38.210Z',
            'draft': false,
            'iid': 3,
            'state': 'merged',
            'description': 'description',
          }
        ]),
      );

      when(() => hiveBox.get(HiveServiceImpl.trackedProjectId)).thenReturn(projectId);
    },
    act: (bloc) => bloc.add(MergeRequestEvent.fetch(startDate: startDate, endDate: endDate)),
    expect: () => [
      MergeRequestState.loading(members: members),
      MergeRequestState.loaded(
        mergeRequests: {
          'Dev 1': [
            MergeRequest(
              author: const Author(name: 'Dev 1', avatarUrl: '', username: 'dev1'),
              createdAt: DateTime.parse('2023-03-14T22:14:38.210Z'),
              draft: false,
              iid: 1,
              state: 'merged',
              description: '',
            ),
          ],
          'Dev 2': [
            MergeRequest(
              author: const Author(name: 'Dev 2', avatarUrl: '', username: 'dev2'),
              createdAt: DateTime.parse('2023-03-16T22:14:38.210Z'),
              draft: false,
              iid: 3,
              state: 'merged',
              description: 'description',
            ),
          ],
          'Dev 3': [
            MergeRequest(
              author: const Author(name: 'Dev 1', avatarUrl: '', username: 'dev1'),
              createdAt: DateTime.parse('2023-03-15T22:14:38.210Z'),
              draft: false,
              iid: 2,
              state: 'opened',
              description: 'description with recognition key for the Dev 3 dev3',
            ),
          ]
        },
      ),
    ],
  );

  blocTest<MergeRequestBloc, MergeRequestState>(
    'Fetch MRs. When Dev 3 did not create any MR',
    build: () => MergeRequestBloc(),
    setUp: () {
      when(() => hiveBox.get(HiveServiceImpl.selectedProjectMembers)).thenReturn(members);
      when(() => gitLabService.getMergeRequests(projectId: projectId)).thenAnswer(
        (_) => Future.value([
          {
            'author': {'name': 'Dev 1', 'avatar_url': '', 'username': 'dev1'},
            'created_at': '2023-03-14T22:14:38.210Z',
            'draft': false,
            'iid': 1,
            'state': 'merged',
            'description': '',
          },
          {
            'author': {'name': 'Dev 2', 'avatar_url': '', 'username': 'dev2'},
            'created_at': '2023-03-16T22:14:38.210Z',
            'draft': false,
            'iid': 3,
            'state': 'opened',
            'description': 'description',
          }
        ]),
      );

      when(() => hiveBox.get(HiveServiceImpl.trackedProjectId)).thenReturn(projectId);
    },
    act: (bloc) => bloc.add(MergeRequestEvent.fetch(startDate: startDate, endDate: endDate)),
    expect: () => [
      MergeRequestState.loading(members: members),
      MergeRequestState.loaded(
        mergeRequests: {
          'Dev 1': [
            MergeRequest(
              author: const Author(name: 'Dev 1', avatarUrl: '', username: 'dev1'),
              createdAt: DateTime.parse('2023-03-14T22:14:38.210Z'),
              draft: false,
              iid: 1,
              state: 'merged',
              description: '',
            ),
          ],
          'Dev 2': [
            MergeRequest(
              author: const Author(name: 'Dev 2', avatarUrl: '', username: 'dev2'),
              createdAt: DateTime.parse('2023-03-16T22:14:38.210Z'),
              draft: false,
              iid: 3,
              state: 'opened',
              description: 'description',
            ),
          ],
          'Dev 3': const [],
        },
      ),
    ],
  );

  blocTest<MergeRequestBloc, MergeRequestState>(
    'Fetch MRs. When Dev 1 closed his MR',
    build: () => MergeRequestBloc(),
    setUp: () {
      when(() => hiveBox.get(HiveServiceImpl.selectedProjectMembers)).thenReturn(members);
      when(() => gitLabService.getMergeRequests(projectId: projectId)).thenAnswer(
        (_) => Future.value([
          {
            'author': {'name': 'Dev 1', 'avatar_url': '', 'username': 'dev1'},
            'created_at': '2023-03-14T22:14:38.210Z',
            'draft': false,
            'iid': 1,
            'state': 'closed',
            'description': '',
          },
          {
            'author': {'name': 'Dev 2', 'avatar_url': '', 'username': 'dev2'},
            'created_at': '2023-03-16T22:14:38.210Z',
            'draft': false,
            'iid': 3,
            'state': 'opened',
            'description': 'description',
          }
        ]),
      );

      when(() => hiveBox.get(HiveServiceImpl.trackedProjectId)).thenReturn(projectId);
    },
    act: (bloc) => bloc.add(MergeRequestEvent.fetch(startDate: startDate, endDate: endDate)),
    expect: () => [
      MergeRequestState.loading(members: members),
      MergeRequestState.loaded(
        mergeRequests: {
          'Dev 1': const [],
          'Dev 2': [
            MergeRequest(
              author: const Author(name: 'Dev 2', avatarUrl: '', username: 'dev2'),
              createdAt: DateTime.parse('2023-03-16T22:14:38.210Z'),
              draft: false,
              iid: 3,
              state: 'opened',
              description: 'description',
            ),
          ],
          'Dev 3': const []
        },
      ),
    ],
  );
}
