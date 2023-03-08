import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/core/ui/header_info_widget.dart';
import 'package:git_statistic/core/ui/widgets/wide_button_widget.dart';
import 'package:git_statistic/features/share_account/domain/entities/shared_member_entity.dart';
import 'package:git_statistic/features/share_account/presentation/bloc/share_account_bloc.dart';

class SetRecognitionKeysWidget extends StatefulWidget {
  const SetRecognitionKeysWidget({required this.members, Key? key}) : super(key: key);

  final Set<SharedMemberEntity> members;

  @override
  State<StatefulWidget> createState() => _SetRecognitionKeysWidgetState();
}

class _SetRecognitionKeysWidgetState extends State<SetRecognitionKeysWidget> {
  final textControllers = <SharedMemberEntity, TextEditingController>{};
  bool doneConditionsMeet = false;

  @override
  void initState() {
    for (final member in widget.members) {
      textControllers[member] = TextEditingController();
    }
    super.initState();
  }

  @override
  void dispose() {
    textControllers.forEach((_, value) => value.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderInfoWidget(
            text: 'Add recognition keys (case insensitive). This key will be looking in '
                'MRs description for author identification',
          ),
          Flexible(
            child: ListView.separated(
              itemCount: widget.members.length,
              padding: const EdgeInsets.only(top: 20, bottom: 80, left: 20, right: 20),
              itemBuilder: (_, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        widget.members.elementAt(index).name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextField(
                      controller: textControllers[widget.members.elementAt(index)],
                      style: const TextStyle(fontSize: 14),
                      decoration: const InputDecoration(
                        hintText: 'Enter the recognition key',
                      ),
                      onSubmitted: (text) => _onSubmitted(
                        text,
                        widget.members.elementAt(index),
                        context,
                      ),
                      onChanged: (text) => _onSubmitted(
                        text,
                        widget.members.elementAt(index),
                        context,
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (_, __) => const SizedBox(height: 20),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: WideButtonWidget(
          text: Text(
            'Done',
            style: doneConditionsMeet ? Style.activeButtonTextStyle : Style.inactiveButtonTextStyle,
          ),
          onTap: doneConditionsMeet
              ? () => BlocProvider.of<ShareAccountBloc>(context).add(
                    const ShareAccountEvent.complete(),
                  )
              : null,
          decoration: doneConditionsMeet ? Style.activeButtonDecoration : Style.inactiveButtonDecoration,
          showInProgress: false,
        ),
      ),
    );
  }

  void _onSubmitted(String text, SharedMemberEntity member, BuildContext context) {
    BlocProvider.of<ShareAccountBloc>(context).add(
      ShareAccountEvent.setRecognitionKeyFor(
        accountId: member.id,
        key: text,
      ),
    );

    setState(() {
      member.recognitionKey = text;
      doneConditionsMeet = widget.members.where((e) => e.recognitionKey.isEmpty).isEmpty;
    });
  }
}
