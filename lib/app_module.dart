import 'package:flutter_modular/flutter_modular.dart';
import 'package:iqvia_kpi/features/presentation/bloc/merge_request/merge_request_bloc.dart';
import 'package:iqvia_kpi/features/presentation/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => MergeRequestBloc(i())),
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const HomePage()),
  ];
}
