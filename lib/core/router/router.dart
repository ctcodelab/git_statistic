import 'package:flutter/material.dart';
import 'package:iqvia_kpi/core/constants/route_path.dart';
import 'package:iqvia_kpi/features/merge_requests/presentation/pages/home_page.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.homeScreen:
      return MaterialPageRoute(
        settings: const RouteSettings(name: RoutePath.homeScreen),
        builder: (_) => const HomePage(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const SizedBox.shrink(),
      );
  }
}
