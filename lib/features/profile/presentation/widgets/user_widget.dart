import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_statistic/features/profile/presentation/bloc/user_bloc.dart';
import 'package:git_statistic/features/profile/presentation/widgets/settings_widget.dart';
import 'package:popover/popover.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (_) => UserBloc()..add(const UserEvent.fetch()),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (blocContext, state) => state.when(
          () => const SizedBox.shrink(),
          user: (user) => InkWell(
            hoverColor: Colors.transparent,
            onTap: () => showPopover(
              context: blocContext,
              width: 200,
              height: 180,
              arrowHeight: 15,
              arrowWidth: 30,
              bodyBuilder: (context) => SettingsWidget(
                blocContext: blocContext,
              ),
            ),
            child: SizedBox(
              width: 100,
              child: Column(
                children: [
                  if (user.avatarUrl != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.network(
                        user.avatarUrl!,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  const SizedBox(height: 3),
                  Text(
                    user.name,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
