import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/features/profile/presentation/bloc/user_bloc.dart';

part 'setting_item.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({
    required this.blocContext,
    Key? key,
  }) : super(key: key);

  final BuildContext blocContext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          _SettingItemWidget(
            text: const Text('Select the new project'),
            onTap: () {
              BlocProvider.of<UserBloc>(blocContext).add(
                UserEvent.setNewProject(
                  context: context,
                ),
              );
              Navigator.of(context).pop();
            },
          ),
          _SettingItemWidget(
            text: const Text('Select new members'),
            onTap: () {
              BlocProvider.of<UserBloc>(blocContext).add(
                UserEvent.setNewMembers(
                  context: context,
                ),
              );
              Navigator.of(context).pop();
            },
          ),
          _SettingItemWidget(
            withUnderline: false,
            text: const Text(
              'Logout',
              style: TextStyle(
                color: Colors.redAccent,
              ),
            ),
            onTap: () {
              BlocProvider.of<UserBloc>(blocContext).add(
                UserEvent.logout(
                  context: context,
                ),
              );
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
