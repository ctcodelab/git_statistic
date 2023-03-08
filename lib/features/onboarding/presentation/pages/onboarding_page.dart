import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:git_statistic/features/onboarding/presentation/shimmers/choose_the_project_shimmer.dart';
import 'package:git_statistic/features/onboarding/presentation/shimmers/chose_members_shimmer.dart';
import 'package:git_statistic/features/onboarding/presentation/widgets/choose_members_widget.dart';
import 'package:git_statistic/features/onboarding/presentation/widgets/choose_the_project_widget.dart';
import 'package:git_statistic/features/share_account/presentation/pages/share_account_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocProvider<OnboardingBloc>(
        create: (_) => OnboardingBloc()..add(const OnboardingEvent.checkConditions()),
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
              completed: () => Navigator.of(context).pushReplacementNamed(RoutePath.homeScreen),
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
            sharedMembers: () => ShareAccountPage(
              onComplete: () => BlocProvider.of<OnboardingBloc>(context).add(
                const OnboardingEvent.complete(),
              ),
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
