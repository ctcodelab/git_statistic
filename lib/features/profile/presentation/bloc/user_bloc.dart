import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/core/ui/widgets/restart_widget.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_onboarding_complete.dart';
import 'package:git_statistic/features/onboarding/domain/usecases/set_tracked_project_id_usecase.dart';
import 'package:git_statistic/features/profile/domain/enteties/user_entity.dart';
import 'package:git_statistic/features/profile/domain/usecase/get_user_usecase.dart';
import 'package:git_statistic/features/profile/domain/usecase/logout_usecase.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : getUserUsecase = locator<GetUserUsecase>(),
        setOnboardingComplete = locator<SetOnboardingComplete>(),
        setTrackedProjectIdUseCase = locator<SetTrackedProjectIdUseCase>(),
        logoutUsecase = locator<LogoutUsecase>(),
        super(const UserState()) {
    on(_onEvent);
  }

  final GetUserUsecase getUserUsecase;
  final SetOnboardingComplete setOnboardingComplete;
  final SetTrackedProjectIdUseCase setTrackedProjectIdUseCase;
  final LogoutUsecase logoutUsecase;

  Future<void> _onEvent(UserEvent event, Emitter<UserState> emit) async {
    await event.when(
      fetch: () async {
        final user = await getUserUsecase(const NoParams());
        emit(UserState.user(user: user));
      },
      setNewProject: (context) {
        setOnboardingComplete(false);
        setTrackedProjectIdUseCase(null);
        Navigator.of(context).pushReplacementNamed(RoutePath.onboardingScreen);
      },
      setNewMembers: (context) {
        setOnboardingComplete(false);
        Navigator.of(context).pushReplacementNamed(RoutePath.onboardingScreen);
      },
      logout: (context) async {
        await logoutUsecase(const NoParams());
        RestartWidget.restartApp(context);
      },
    );
  }
}

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetch() = _Fetch;

  const factory UserEvent.setNewProject({
    required BuildContext context,
  }) = _SetNewProject;

  const factory UserEvent.setNewMembers({
    required BuildContext context,
  }) = _SetNewMembers;

  const factory UserEvent.logout({
    required BuildContext context,
  }) = _Logout;
}

@freezed
class UserState with _$UserState {
  const factory UserState() = _UserState;

  const factory UserState.user({required UserEntity user}) = _User;
}
