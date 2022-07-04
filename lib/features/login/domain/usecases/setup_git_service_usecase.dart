import 'package:flutter/foundation.dart';
import 'package:gitlab/gitlab.dart';
import 'package:iqvia_kpi/core/services/git/gitlab_service.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';

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
