import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';
import 'package:iqvia_kpi/core/ui/header_info_widget.dart';
import 'package:iqvia_kpi/core/ui/widgets/wide_button_widget.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/member_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';
import 'package:iqvia_kpi/features/onboarding/presentation/bloc/onboarding_bloc.dart';

class ChooseMembersWidget extends StatefulWidget {
  const ChooseMembersWidget({
    required this.members,
    Key? key,
  }) : super(key: key);

  final MembersEntity members;

  @override
  State<StatefulWidget> createState() => _ChooseMembersWidgetState();
}

class _ChooseMembersWidgetState extends State<ChooseMembersWidget> {
  final selectedMembers = <MemberEntity>[];
  BoxDecoration buttonDecoration = Style.inactiveButtonDecoration;
  VoidCallback? onTap;
  TextStyle buttonTextStyle = Style.inactiveButtonTextStyle;
  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderInfoWidget(
            text: 'Please choose the members which you want to track.\n'
                'NOTE: in order, you\'ll select them in this order you\'ll see them. '
                'So for more convenience it\'s recommended selecting at the same order as in our Exel table.',
          ),
          Flexible(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ListView.builder(
                itemCount: widget.members.length,
                padding: const EdgeInsets.only(top: 10, bottom: 80),
                itemBuilder: (_, index) => InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () => setState(() {
                    final member = widget.members[index];
                    if (!selectedMembers.contains(member)) {
                      selectedMembers.add(member);
                    } else {
                      selectedMembers.remove(member);
                    }

                    checkButtonConditions();
                  }),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: !selectedMembers.contains(widget.members[index])
                            ? AppColors.text600
                            : AppColors.blue,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: !selectedMembers.contains(widget.members[index])
                          ? AppColors.white
                          : AppColors.blue.withOpacity(0.1),
                    ),
                    child: Row(
                      children: [
                        if (widget.members[index].avatarUrl != null)
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.network(
                                widget.members[index].avatarUrl!,
                                width: 40,
                                height: 40,
                              ),
                            ),
                          ),
                        Text(widget.members[index].name),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: WideButtonWidget(
            text: Text(
              'OK',
              style: buttonTextStyle,
            ),
            onTap: onTap,
            decoration: buttonDecoration,
            showInProgress: showLoading,
          ),
        ),
      ),
    );
  }

  void checkButtonConditions() {
    if (selectedMembers.isNotEmpty) {
      buttonDecoration = Style.activeButtonDecoration;
      onTap = () {
        setState(() => showLoading = true);
        FocusScope.of(context).requestFocus(FocusNode());
        BlocProvider.of<OnboardingBloc>(context).add(
          OnboardingEvent.membersSelected(
            members: MembersEntity(
              members: selectedMembers,
            ),
          ),
        );
      };
      buttonTextStyle = Style.activeButtonTextStyle;
    } else {
      buttonDecoration = Style.inactiveButtonDecoration;
      onTap = null;
      buttonTextStyle = Style.inactiveButtonTextStyle;
    }
  }
}
