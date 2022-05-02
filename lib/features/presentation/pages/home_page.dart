import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';
import 'package:iqvia_kpi/features/presentation/bloc/merge_request/merge_request_bloc.dart';
import 'package:iqvia_kpi/features/presentation/widgets/row_widget.dart';

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
              return Padding(
                padding: const EdgeInsets.all(16),
                child: state.when(
                  () => const SizedBox.shrink(),
                  loaded: (devs, startDate, endDate) {
                    final children = <Widget>[];
                    devs.forEach((key, value) {
                      children.add(
                        RowWidget(devName: key, mrs: value),
                      );
                    });

                    final formatter = DateFormat('dd.MM.y');
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Requested for: ${formatter.format(startDate)} - ${formatter.format(endDate)}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              top: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              right: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 4,
                                child: const Text(
                                  'Developer Name',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    'Merge Requests',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: Center(
                                  child: Text(
                                    'Discussions',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
