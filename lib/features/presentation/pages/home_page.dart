import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:iqvia_kpi/features/presentation/bloc/merge_request/merge_request_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SingleChildScrollView(
          child: BlocProvider<MergeRequestBloc>(
            create: (_) => Modular.get<MergeRequestBloc>()
              ..add(
                const MergeRequestEvent.fetch(),
              ),
            child: BlocBuilder<MergeRequestBloc, MergeRequestState>(
              builder: (context, state) {
                return state.when(
                  () => const SizedBox.shrink(),
                  loaded: (mergeRequests) {
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
