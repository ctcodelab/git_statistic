import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqvia_kpi/features/share_account/presentation/bloc/share_account_bloc.dart';
import 'package:iqvia_kpi/features/share_account/presentation/widgets/assign_members_on_account.dart';
import 'package:iqvia_kpi/features/share_account/presentation/widgets/set_recognition_keys_widget.dart';
import 'package:iqvia_kpi/features/share_account/presentation/widgets/share_account_overview_widget.dart';

class ShareAccountPage extends StatelessWidget {
  const ShareAccountPage({required this.onComplete, Key? key}) : super(key: key);

  final VoidCallback onComplete;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ShareAccountBloc(onComplete: onComplete)..add(const ShareAccountEvent.fetch()),
      child: BlocBuilder<ShareAccountBloc, ShareAccountState>(
        buildWhen: (_, state) => state.maybeWhen(
          () => true,
          orElse: () => true,
          members: (_) => false,
        ),
        builder: (context, state) {
          return state.maybeWhen(
            () => const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
            accountOverview: (members) => ShareAccountOverviewWidget(
              members: members,
            ),
            addShareToAccount: (name, id) => AssignMembersOnAccountWidget(
              accountId: id,
              accountName: name,
            ),
            setRecognitionKeys: (members) => SetRecognitionKeysWidget(members: members),
          );
        },
      ),
    );
  }
}
