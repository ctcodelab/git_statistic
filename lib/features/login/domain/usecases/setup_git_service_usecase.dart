import 'package:flutter/foundation.dart';
import 'package:flutter_gitlab/flutter_gitlab.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/core/utils/usecase.dart';

class SetupGitServiceUsecase extends UseCase<void, String> {
  @override
  void call(final String params) {
    try {
      locator.registerLazySingleton(
        () => GitLab(
          params,
          host: 'gitlab.ims.io',
          requestLogger: kDebugMode,
        ),
      );
      locator.registerLazySingleton(() => GitLabService());
    } on ArgumentError catch (_) {}
  }
}
