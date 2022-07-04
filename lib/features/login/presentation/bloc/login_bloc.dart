import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/login/domain/usecases/login_needed_usecase.dart';
import 'package:iqvia_kpi/features/login/domain/usecases/save_login_token_usecase.dart';
import 'package:iqvia_kpi/features/login/domain/usecases/setup_git_service_usecase.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : loginUseCase = locator<LoginNeededUseCase>(),
        loginTokenUsecase = locator<SaveLoginTokenUsecase>(),
        setupGitServiceUsecase = locator<SetupGitServiceUsecase>(),
        super(const LoginState()) {
    on(_onEvent);
  }

  final LoginNeededUseCase loginUseCase;
  final SaveLoginTokenUsecase loginTokenUsecase;
  final SetupGitServiceUsecase setupGitServiceUsecase;

  Future<void> _onEvent(LoginEvent event, Emitter<LoginState> emit) async {
    event.when(
      checkConditions: () {
        final token = loginUseCase(const NoParams());

        if (token != null) {
          setupGitServiceUsecase(token);
          emit(const LoginState.regular());
        } else {
          emit(const LoginState.login());
        }
      },
      setToken: (token) {
        loginTokenUsecase(token);
        add(const LoginEvent.checkConditions());
      },
    );
  }
}

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.checkConditions() = _CheckConditions;

  const factory LoginEvent.setToken({required String token}) = _SetToken;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState() = _LoginState;

  const factory LoginState.regular() = _Regular;

  const factory LoginState.login() = _Login;
}
