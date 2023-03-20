import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:git_statistic/core/services/hive/hive_service_imp.dart';
import 'package:git_statistic/core/services/hive/secured_hive_service_impl.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/onboarding/data/datasource/local/onboarding_local_datasource_impl.dart';
import 'package:git_statistic/features/onboarding/data/datasource/remote/onboarding_remote_datasource_iml.dart';
import 'package:git_statistic/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_onboarding_complete.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_tracked_project_id_usecase.dart';
import 'package:git_statistic/features/profile/data/datasource/local/user_local_datasource.dart';
import 'package:git_statistic/features/profile/data/datasource/remote/user_remote_datasource.dart';
import 'package:git_statistic/features/profile/data/models/user.dart';
import 'package:git_statistic/features/profile/data/repository/user_repository_impl.dart';
import 'package:git_statistic/features/profile/domain/usecase/get_user_usecase.dart';
import 'package:git_statistic/features/profile/domain/usecase/logout_usecase.dart';
import 'package:git_statistic/features/profile/presentation/bloc/user_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock.dart';

void main() {
  late final MockHiveBox hiveBox;
  late final MockHiveBox secureHiveBox;
  late final MockGitLabService gitLabService;

  setUpAll(() {
    hiveBox = MockHiveBox();
    secureHiveBox = MockHiveBox();
    gitLabService = MockGitLabService();

    locator.registerLazySingleton(() => HiveServiceImpl(hiveBox));
    locator.registerLazySingleton(() => SecuredHiveServiceImpl(secureHiveBox));

    locator.registerFactory(() => UserRemoteDataSource());
    locator.registerFactory(() => UserLocalDatasource());
    locator.registerFactory(() => UserRepository());
    locator.registerFactory(() => GetUserUsecase());
    locator.registerFactory(() => LogoutUsecase());
    locator.registerFactory(() => SetTrackedProjectIdUseCase());
    locator.registerFactory(() => OnboardingLocalDatasourceImpl());
    locator.registerFactory(() => OnboardingRemoteDatasourceImpl());
    locator.registerFactory(() => OnboardingRepositoryImpl());
    locator.registerFactory(() => SetOnboardingComplete());

    locator.registerLazySingleton(() => MockGitLab());
    locator.registerLazySingleton<GitLabService>(() => gitLabService);

    when(() => gitLabService.getUser()).thenAnswer((_) => Future.value({'avatar_url': 'url', 'name': 'Dev Dev'}));
  });

  blocTest<UserBloc, UserState>(
    'fetch event',
    build: () => UserBloc(),
    act: (bloc) => bloc.add(const UserEvent.fetch()),
    expect: () => [
      const UserState.user(user: User(avatarUrl: 'url', name: 'Dev Dev')),
    ],
  );

  group('Test navigation to the new screens', () {
    late final UserBloc bloc;

    setUpAll(() {
      bloc = UserBloc();

      when(() => hiveBox.put(HiveServiceImpl.onboardingPassed, any())).thenAnswer((_) => Future.value());
      when(() => hiveBox.put(HiveServiceImpl.trackedProjectId, any())).thenAnswer((_) => Future.value());
      when(() => hiveBox.clear()).thenAnswer((_) => Future.value(1));
      when(() => secureHiveBox.clear()).thenAnswer((_) => Future.value(1));
    });

    tearDownAll(() {
      bloc.close();
    });

    testWidgets('setNewProject event. Navigate to the select project screen', (tester) async {
      const buttonKey = Key('setNewProject');
      final navigatorObserver = TestNavigatorObserver();

      // Build the widget tree.
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              body: ElevatedButton(
                key: buttonKey,
                onPressed: () => bloc.add(UserEvent.setNewProject(context: context)),
                child: const Text('Set new project'),
              ),
            ),
          ),
          navigatorObservers: [navigatorObserver],
          onGenerateRoute: (settings) => MaterialPageRoute(
            settings: RouteSettings(name: settings.name),
            builder: (_) => const SizedBox.shrink(),
          ),
        ),
      );

      // Find the button by its key.
      final button = find.byKey(buttonKey);
      // Tap the button.
      await tester.tap(button);

      // Rebuild the widget tree with the updated state.
      await tester.pump();

      expect(navigatorObserver.pushedRoutes.length, 2);
      expect(navigatorObserver.pushedRoutes.first?.settings.name, '/');
      expect(navigatorObserver.pushedRoutes.last?.settings.name, RoutePath.onboardingScreen);
    });

    testWidgets('setNewMembers event. Navigate to the select project screen', (tester) async {
      const buttonKey = Key('setNewMembers');
      final navigatorObserver = TestNavigatorObserver();

      // Build the widget tree.
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => Scaffold(
              body: ElevatedButton(
                key: buttonKey,
                onPressed: () => bloc.add(UserEvent.setNewMembers(context: context)),
                child: const Text('Set new members'),
              ),
            ),
          ),
          navigatorObservers: [navigatorObserver],
          onGenerateRoute: (settings) => MaterialPageRoute(
            settings: RouteSettings(name: settings.name),
            builder: (_) => const SizedBox.shrink(),
          ),
        ),
      );

      // Find the button by its key.
      final button = find.byKey(buttonKey);
      // Tap the button.
      await tester.tap(button);

      // Rebuild the widget tree with the updated state.
      await tester.pump();

      expect(navigatorObserver.pushedRoutes.length, 2);
      expect(navigatorObserver.pushedRoutes.first?.settings.name, '/');
      expect(navigatorObserver.pushedRoutes.last?.settings.name, RoutePath.onboardingScreen);
    });
  });
}
