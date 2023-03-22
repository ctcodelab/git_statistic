import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:git_statistic/core/services/hive/secured_hive_service_impl.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/login/data/datasource/local/login_datasource_impl.dart';
import 'package:git_statistic/features/login/data/repositories/login_repository_impl.dart';
import 'package:git_statistic/features/login/domain/usecases/login_needed_usecase.dart';
import 'package:git_statistic/features/login/domain/usecases/save_login_token_usecase.dart';
import 'package:git_statistic/features/login/domain/usecases/setup_git_service_usecase.dart';
import 'package:git_statistic/features/login/presentation/bloc/login_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../mock.dart';

void main() {
  const token = 'token';
  late final MockHiveBox hiveBox;

  setUpAll(() {
    hiveBox = MockHiveBox();

    locator.registerLazySingleton(() => SecuredHiveServiceImpl(hiveBox));

    locator.registerFactory(() => LoginDataSourceImpl());
    locator.registerFactory(() => LoginRepositoryImpl());
    locator.registerFactory(() => LoginNeededUseCase());
    locator.registerFactory(() => SaveLoginTokenUsecase());
    locator.registerFactory(() => SetupGitServiceUsecase());
  });

  blocTest<LoginBloc, LoginState>(
    'checkConditions. Login required',
    build: () => LoginBloc(),
    setUp: () {
      when(() => hiveBox.get(SecuredHiveServiceImpl.tokenKey)).thenReturn(null);
    },
    act: (bloc) => bloc.add(const LoginEvent.checkConditions()),
    expect: () => [const LoginState.login()],
  );

  blocTest<LoginBloc, LoginState>(
    'checkConditions. Regular flow, login passed',
    build: () => LoginBloc(),
    setUp: () {
      when(() => hiveBox.get(SecuredHiveServiceImpl.tokenKey)).thenReturn(token);
    },
    act: (bloc) => bloc.add(const LoginEvent.checkConditions()),
    expect: () => [const LoginState.regular()],
  );

  blocTest<LoginBloc, LoginState>(
    'checkConditions. Regular flow, login passed',
    build: () {
      return LoginBloc();
    },
    setUp: () {
      when(() => hiveBox.get(SecuredHiveServiceImpl.tokenKey)).thenReturn(token);
    },
    act: (bloc) => bloc.add(const LoginEvent.checkConditions()),
    expect: () => [const LoginState.regular()],
  );

  blocTest<LoginBloc, LoginState>(
    'checkConditions. Save token',
    build: () => LoginBloc(),
    setUp: () {
      when(() => hiveBox.get(SecuredHiveServiceImpl.tokenKey)).thenReturn(token);
      when(() => hiveBox.put(SecuredHiveServiceImpl.tokenKey, any())).thenAnswer((_) => Future.value());
    },
    act: (bloc) => bloc.add(const LoginEvent.setToken(token: token)),
    expect: () => [const LoginState.regular()],
  );
}
