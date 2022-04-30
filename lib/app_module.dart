import 'package:flutter_modular/flutter_modular.dart';
import 'package:gitlab/gitlab.dart';
import 'package:iqvia_kpi/core/services/git_service.dart';
import 'package:iqvia_kpi/core/services/gitlab_service.dart';
import 'package:iqvia_kpi/features/data/datasources/remote/merge_request_implementation.dart';
import 'package:iqvia_kpi/features/data/repositories/merge_request_repository_implementation.dart';
import 'package:iqvia_kpi/features/domain/usecases/merge_request_usecase.dart';
import 'package:iqvia_kpi/features/presentation/bloc/merge_request/merge_request_bloc.dart';
import 'package:iqvia_kpi/features/presentation/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<MergeRequestBloc>((i) => MergeRequestBloc(i())),
        Bind.lazySingleton((i) => MergeRequestDataSourceImplementation(i())),
        Bind.lazySingleton(
          (i) => MergeRequestRepositoryImplementation(remoteDataSource: i()),
        ),
        Bind.lazySingleton((i) => MergeRequestUsecase(repository: i())),
        Bind.factory(
          (i) => GitLab('glpat-KUsnhRnQJELNpUdzXiM5', host: 'gitlab.ims.io'),
        ),
        Bind.factory<GitService>((i) => GitLabService(i())),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const HomePage()),
  ];
}
