import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';
import 'package:iqvia_kpi/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:iqvia_kpi/features/onboarding/presentation/shimmers/choose_the_project_shimmer.dart';
import 'package:iqvia_kpi/features/onboarding/presentation/shimmers/chose_members_shimmer.dart';
import 'package:iqvia_kpi/features/onboarding/presentation/widgets/choose_members_widget.dart';
import 'package:iqvia_kpi/features/onboarding/presentation/widgets/choose_the_project_widget.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocProvider<OnboardingBloc>(
        create: (_) =>
            OnboardingBloc()..add(const OnboardingEvent.checkConditions()),
        child: BlocConsumer<OnboardingBloc, OnboardingState>(
          listenWhen: (_, state) => state.maybeWhen(
            () => false,
            orElse: () => false,
            completed: () => true,
          ),
          listener: (context, state) {
            state.maybeWhen(
              () => null,
              orElse: () => null,
              completed: () => Navigator.of(context)
                  .pushReplacementNamed(RoutePath.homeScreen),
            );
          },
          buildWhen: (_, state) => state.maybeWhen(
            () => true,
            orElse: () => true,
            completed: () => false,
          ),
          builder: (context, state) => state.when(
            () => const SizedBox.shrink(),
            yourProjects: (projects) => ChooseTheProjectWidget(
              projects: projects,
            ),
            members: (members) => ChooseMembersWidget(
              members: members,
            ),
            completed: () => const SizedBox.shrink(),
            membersLoading: () => const ChooseMembersShimmer(),
            projectsLoading: () => const ChooseTheProjectShimmer(),
          ),
        ),
      ),
    );
  }
}
