import 'package:flutter/material.dart';
import 'package:git_statistic/core/constants/route_path.dart';
import 'package:git_statistic/core/ui/pages/home_page.dart';
import 'package:git_statistic/features/onboarding/presentation/pages/onboarding_page.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.homeScreen:
      return MaterialPageRoute(
        settings: const RouteSettings(name: RoutePath.homeScreen),
        builder: (_) => const HomePage(),
      );
    case RoutePath.onboardingScreen:
      return MaterialPageRoute(
        settings: const RouteSettings(name: RoutePath.onboardingScreen),
        builder: (_) => const OnboardingPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const SizedBox.shrink(),
      );
  }
}
