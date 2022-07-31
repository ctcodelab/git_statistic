import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';
import 'package:iqvia_kpi/core/utils/calendar.dart';
import 'package:iqvia_kpi/features/merge_requests/presentation/widgets/merge_request_widget.dart';
import 'package:iqvia_kpi/features/profile/presentation/bloc/user_bloc.dart';
import 'package:iqvia_kpi/features/profile/presentation/widgets/user_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formatter = DateFormat('dd.MM.y');

  late DateTime startDate;
  late DateTime endDate;

  @override
  void initState() {
    final now = DateTime.now();
    startDate = Calendar.findFirstDateOfPreviousWeek(
      DateTime(
        now.year,
        now.month,
        now.day,
      ),
    );
    endDate = Calendar.findLastDateOfTheWeek(
      DateTime(
        startDate.year,
        startDate.month,
        startDate.day,
        23,
        59,
        59,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (_) => UserBloc()..add(const UserEvent.fetch()),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                color: AppColors.blue.withOpacity(0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Requested for: ${formatter.format(startDate)} - '
                      '${formatter.format(endDate)}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const UserWidget(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MergeRequestWidget(
                  startDate: startDate,
                  endDate: endDate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
