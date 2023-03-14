import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_statistic/features/merge_requests/presentation/bloc/merge_request_bloc.dart';
import 'package:git_statistic/features/merge_requests/presentation/shimmers/merge_request_shimmer.dart';
import 'package:git_statistic/features/merge_requests/presentation/widgets/row_widget.dart';
import 'package:git_statistic/features/merge_requests/presentation/widgets/table_header_widget.dart';

class MergeRequestWidget extends StatelessWidget {
  const MergeRequestWidget({
    required this.startDate,
    required this.endDate,
    Key? key,
  }) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MergeRequestBloc>(
      create: (context) => MergeRequestBloc()
        ..add(MergeRequestEvent.fetch(
          startDate: startDate,
          endDate: endDate,
        )),
      child: BlocBuilder<MergeRequestBloc, MergeRequestState>(
        builder: (context, state) => state.when(
          () => const SizedBox.shrink(),
          loading: (members) => MergeRequestShimmer(members: members),
          loaded: (devs) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TableHeaderWidget(),
                ...devs.entries
                    .map(
                      (entry) => RowWidget(
                        devName: entry.key,
                        mrs: entry.value,
                      ),
                    )
                    .toList(),
              ],
            );
          },
        ),
      ),
    );
  }
}
