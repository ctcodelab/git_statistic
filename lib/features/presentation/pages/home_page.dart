import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:iqvia_kpi/features/data/models/merge_request.dart';
import 'package:iqvia_kpi/features/presentation/bloc/merge_request/merge_request_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider<MergeRequestBloc>(
          create: (context) => Modular.get<MergeRequestBloc>()
            ..add(const MergeRequestEvent.fetch()),
          child: BlocBuilder<MergeRequestBloc, MergeRequestState>(
            builder: (context, state) {
              return state.when(
                () => const SizedBox.shrink(),
                loaded: (devs) {
                  final children = <Widget>[];
                  devs.forEach((key, value) {
                    children.add(
                      Row(
                        children: [
                          Text(key),
                          const SizedBox(width: 20),
                          Text(value.length.toString()),
                          const SizedBox(width: 20),
                          Text(getDiscussionsCount(value).toString()),
                        ],
                      ),
                    );
                  });

                  return Column(children: children);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  int getDiscussionsCount(List<MergeRequest> mrs) {
    int count = 0;

    for (final mr in mrs) {
      count += mr.discussion.length;
    }

    return count;
  }
}
