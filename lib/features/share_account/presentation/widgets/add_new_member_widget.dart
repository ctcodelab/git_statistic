import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:git_statistic/core/constants/constants.dart';

class AddNewMemberWidget extends StatefulWidget {
  const AddNewMemberWidget({
    required this.onSubmitted,
    Key? key,
  }) : super(key: key);

  final ValueChanged<String> onSubmitted;

  @override
  State<StatefulWidget> createState() => _AddNewMemberWidgetState();
}

class _AddNewMemberWidgetState extends State<AddNewMemberWidget> {
  final expandableController = ExpandableController();
  final textController = TextEditingController();

  @override
  void dispose() {
    expandableController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: ScrollOnExpand(
        child: ExpandablePanel(
          controller: expandableController,
          collapsed: InkWell(
            onTap: () => expandableController.toggle(),
            child: const _AddNewMemberPrompt(),
          ),
          expanded: Column(
            children: [
              InkWell(
                onTap: () => expandableController.toggle(),
                child: const _AddNewMemberPrompt(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: textController,
                      style: const TextStyle(fontSize: 14),
                      decoration: const InputDecoration(
                        hintText: 'Enter the name',
                      ),
                      onSubmitted: _onSubmitted,
                      onChanged: (_) => setState(() {}),
                    ),
                  ),
                  Flexible(
                    child: InkWell(
                      onTap: textController.text.isNotEmpty ? () => _onSubmitted(textController.text) : null,
                      child: Container(
                        decoration: (textController.text.isNotEmpty
                                ? Style.activeButtonDecoration
                                : Style.inactiveButtonDecoration)
                            .copyWith(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 15,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Submit',
                          style: (textController.text.isNotEmpty
                                  ? Style.activeButtonTextStyle
                                  : Style.inactiveButtonTextStyle)
                              .copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSubmitted(String text) {
    widget.onSubmitted(text);
    expandableController.toggle();
    setState(() => textController.clear());
  }
}

class _AddNewMemberPrompt extends StatelessWidget {
  const _AddNewMemberPrompt();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.add,
          color: AppColors.blue,
        ),
        Text(
          'Add a new member',
          style: TextStyle(
            color: AppColors.blue,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
