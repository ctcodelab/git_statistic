import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:iqvia_kpi/features/merge_requests/presentation/bloc/merge_request_bloc.dart';
import 'package:iqvia_kpi/features/merge_requests/presentation/shimmers/home_screen_shimmer.dart';
import 'package:iqvia_kpi/features/merge_requests/presentation/widgets/row_widget.dart';
import 'package:iqvia_kpi/features/merge_requests/presentation/widgets/table_header_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider<MergeRequestBloc>(
          create: (context) =>
              MergeRequestBloc()..add(const MergeRequestEvent.fetch()),
          child: BlocBuilder<MergeRequestBloc, MergeRequestState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16),
                child: state.when(
                  () => const HomeScreenShimmer(),
                  loaded: (devs, startDate, endDate) {
                    final formatter = DateFormat('dd.MM.y');
                    final children = <Widget>[];
                    devs.forEach((key, value) {
                      children.add(
                        RowWidget(devName: key, mrs: value),
                      );
                    });

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Requested for: ${formatter.format(startDate)} - ${formatter.format(endDate)}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        const TableHeaderWidget(),
                        ...children,
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
