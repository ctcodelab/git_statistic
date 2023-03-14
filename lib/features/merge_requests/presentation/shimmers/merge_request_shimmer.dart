import 'package:flutter/material.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/features/merge_requests/presentation/widgets/row_widget.dart';
import 'package:git_statistic/features/merge_requests/presentation/widgets/table_header_widget.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';
import 'package:shimmer/shimmer.dart';

class MergeRequestShimmer extends StatelessWidget {
  const MergeRequestShimmer({required this.members, Key? key}) : super(key: key);

  final MembersEntity members;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerBase,
      highlightColor: AppColors.shimmerHighlight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TableHeaderWidget(),
          ...List.generate(
            members.length,
            (index) => RowWidget(
              devName: members[index].name,
              mrs: const [],
            ),
          ),
        ],
      ),
    );
  }
}
