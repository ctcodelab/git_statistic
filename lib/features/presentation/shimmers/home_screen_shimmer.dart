import 'package:flutter/material.dart';
import 'package:iqvia_kpi/core/config/config.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';
import 'package:iqvia_kpi/features/presentation/widgets/row_widget.dart';
import 'package:iqvia_kpi/features/presentation/widgets/table_header_widget.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreenShimmer extends StatelessWidget {
  const HomeScreenShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBase,
      highlightColor: AppColors.shimmerHighlight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Requested for:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const TableHeaderWidget(),
          ...List.generate(
            DefaultConfig.devs.length,
            (index) => const RowWidget(devName: '', mrs: []),
          ),
        ],
      ),
    );
  }
}
