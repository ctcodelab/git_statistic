import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';
import 'package:iqvia_kpi/core/ui/header_info_widget.dart';
import 'package:iqvia_kpi/core/ui/widgets/wide_button_widget.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/project_entity.dart';
import 'package:iqvia_kpi/features/onboarding/presentation/bloc/onboarding_bloc.dart';

class ChooseTheProjectWidget extends StatefulWidget {
  const ChooseTheProjectWidget({
    required this.projects,
    Key? key,
  }) : super(key: key);

  final List<ProjectEntity> projects;

  @override
  State<StatefulWidget> createState() => _ChooseTheProjectWidgetState();
}

class _ChooseTheProjectWidgetState extends State<ChooseTheProjectWidget> {
  int? projectId;
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
            text: 'Please choose the project which one you want to track. '
                'The only one project is supported so far.',
          ),
          Flexible(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ListView.builder(
                itemCount: widget.projects.length,
                padding: const EdgeInsets.only(top: 10, bottom: 80),
                itemBuilder: (_, index) => InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () => setState(() {
                    widget.projects[index].id != projectId
                        ? projectId = widget.projects[index].id
                        : projectId = null;
                    checkButtonConditions();
                  }),
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: widget.projects[index].id != projectId
                            ? AppColors.text600
                            : AppColors.blue,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: widget.projects[index].id != projectId
                          ? AppColors.white
                          : AppColors.blue.withOpacity(0.1),
                    ),
                    child: Row(
                      children: [
                        Text(widget.projects[index].nameWithNamespace),
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
    if (projectId != null) {
      buttonDecoration = Style.activeButtonDecoration;
      onTap = () {
        setState(() => showLoading = true);
        FocusScope.of(context).requestFocus(FocusNode());
        BlocProvider.of<OnboardingBloc>(context).add(
          OnboardingEvent.projectSelected(projectId: projectId!),
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
