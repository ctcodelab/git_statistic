import 'package:flutter/cupertino.dart';
import 'package:flutter_gitlab/flutter_gitlab.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';

class MockHiveBox extends Mock implements Box {}

class MockGitLabService extends Mock implements GitLabService {}

class MockGitLab extends Mock implements GitLab {}

class TestNavigatorObserver extends NavigatorObserver {
  final List<Route<dynamic>?> pushedRoutes = [];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    pushedRoutes.add(route);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    pushedRoutes.add(newRoute);
  }
}
