import 'package:flutter/material.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/features/onboarding/domain/entities/member_entity.dart';
import 'package:git_statistic/features/onboarding/presentation/widgets/member_widget.dart';

class SharedMemberWidget extends StatelessWidget {
  const SharedMemberWidget({
    required this.member,
    required this.onDelete,
    Key? key,
  }) : super(key: key);

  final MemberEntity member;
  final ValueChanged<int> onDelete;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MemberWidget(
          avatarUrl: member.avatarUrl,
          name: member.name,
        ),
        const Divider(thickness: 1, height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text('Shared with'),
        ),
        Visibility(
          visible: member.sharedWith.isEmpty,
          child: const Center(
            child: Text('No one'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: ListView.separated(
            itemCount: member.sharedWith.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 3, right: 5),
                  child: Icon(Icons.circle, size: 8),
                ),
                MemberWidget(
                  avatarUrl: null,
                  name: member.sharedWith[index].name,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => onDelete(index),
                  icon: const Icon(
                    Icons.delete,
                    color: AppColors.text600,
                  ),
                ),
              ],
            ),
            separatorBuilder: (_, index) =>
                index + 1 != member.sharedWith.length ? const Divider(thickness: 1) : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
