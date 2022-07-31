import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/get_tracked_project_id.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/project_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/membership_projects_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/onboarding_completed_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/project_members_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/set_onboarding_complete.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/set_selected_project_members.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/set_tracked_project_id_usecase.dart';

part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc()
      : onboardingCompletedUsecase = locator<OnboardingCompletedUsecase>(),
        membershipProjectsUsecase = locator<MembershipProjectsUsecase>(),
        setTrackedProjectIdUseCase = locator<SetTrackedProjectIdUseCase>(),
        projectMembersUsecase = locator<ProjectMembersUsecase>(),
        setSelectedProjectMembers = locator<SetSelectedProjectMembers>(),
        setOnboardingComplete = locator<SetOnboardingComplete>(),
        getTrackedProjectIdUseCase = locator<GetTrackedProjectIdUseCase>(),
        super(const OnboardingState()) {
    on(_onEvent);
  }

  final OnboardingCompletedUsecase onboardingCompletedUsecase;
  final MembershipProjectsUsecase membershipProjectsUsecase;
  final SetTrackedProjectIdUseCase setTrackedProjectIdUseCase;
  final ProjectMembersUsecase projectMembersUsecase;
  final SetSelectedProjectMembers setSelectedProjectMembers;
  final SetOnboardingComplete setOnboardingComplete;
  final GetTrackedProjectIdUseCase getTrackedProjectIdUseCase;

  Future<void> _onEvent(
    OnboardingEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    await event.when(
      checkConditions: () {
        final completed = onboardingCompletedUsecase(const NoParams());
        final projectId = getTrackedProjectIdUseCase(const NoParams());

        if (completed) {
          emit(const OnboardingState.completed());
        } else {
          if (projectId == null) {
            add(const OnboardingEvent.myProjects());
          } else {
            add(OnboardingEvent.projectSelected(projectId: projectId));
          }
        }
      },
      myProjects: () async {
        emit(const OnboardingState.projectsLoading());

        final projects = await membershipProjectsUsecase(const NoParams());
        emit(OnboardingState.yourProjects(projects: projects));
      },
      projectSelected: (projectId) async {
        emit(const OnboardingState.membersLoading());
        setTrackedProjectIdUseCase(projectId);

        final members = await projectMembersUsecase(projectId);
        emit(OnboardingState.members(members: members));
      },
      membersSelected: (members) {
        setSelectedProjectMembers(members);
        emit(const OnboardingState.sharedMembers());
      },
      complete: () {
        setOnboardingComplete(true);
        emit(const OnboardingState.completed());
      },
    );
  }
}

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.checkConditions() = _CheckConditions;

  const factory OnboardingEvent.myProjects() = _MyProjects;

  const factory OnboardingEvent.projectSelected({
    required int projectId,
  }) = _ProjectSelected;

  const factory OnboardingEvent.membersSelected({
    required MembersEntity members,
  }) = _MembersSelected;

  const factory OnboardingEvent.complete() = _Complete;
}

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState() = _OnboardingState;

  const factory OnboardingState.projectsLoading() = _ProjectsLoading;

  const factory OnboardingState.yourProjects({
    required List<ProjectEntity> projects,
  }) = _YourProjects;

  const factory OnboardingState.completed() = _Completed;

  const factory OnboardingState.membersLoading() = _MembersLoading;

  const factory OnboardingState.members({
    required MembersEntity members,
  }) = _Members;

  const factory OnboardingState.sharedMembers() = _SharedMembers;
}
