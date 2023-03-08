import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_statistic/core/constants/constants.dart';
import 'package:git_statistic/core/ui/header_info_widget.dart';
import 'package:git_statistic/core/ui/widgets/wide_button_widget.dart';
import 'package:git_statistic/features/onboarding/domain/entities/member_entity.dart';
import 'package:git_statistic/features/onboarding/presentation/widgets/member_widget.dart';
import 'package:git_statistic/features/share_account/presentation/bloc/share_account_bloc.dart';
import 'package:git_statistic/features/share_account/presentation/widgets/add_new_member_widget.dart';

class AssignMembersOnAccountWidget extends StatefulWidget {
  const AssignMembersOnAccountWidget({
    required this.accountName,
    required this.accountId,
    Key? key,
  }) : super(key: key);

  final String accountName;
  final int accountId;

  @override
  State<StatefulWidget> createState() => _AssignMembersOnAccountWidgetState();
}

class _AssignMembersOnAccountWidgetState extends State<AssignMembersOnAccountWidget> {
  final selectedMembers = <MemberEntity>{};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderInfoWidget(text: 'Assign members to ${widget.accountName}\'s account'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: AddNewMemberWidget(
                onSubmitted: (name) {
                  BlocProvider.of<ShareAccountBloc>(context).add(
                    ShareAccountEvent.addNewMember(
                      MemberEntity(
                        id: UniqueKey().hashCode,
                        avatarUrl: null,
                        name: name,
                        state: 'active',
                        username: '',
                        sharedWith: [],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: BlocBuilder<ShareAccountBloc, ShareAccountState>(
                builder: (context, state) => state.maybeWhen(
                  () => const SizedBox.shrink(),
                  orElse: () => const SizedBox.shrink(),
                  members: (members) {
                    final account = members.members.firstWhere(
                      (e) => e.id == widget.accountId,
                    );
                    final filteredMembers = members.members.map((e) => e).toList()
                      ..removeWhere((e) => e.id == widget.accountId)
                      ..removeWhere(
                        (e) => account.sharedWith.map((e) => e.id).toList().contains(e.id),
                      );

                    return ListView.builder(
                      itemCount: filteredMembers.length,
                      padding: const EdgeInsets.only(bottom: 80),
                      itemBuilder: (_, index) => InkWell(
                        onTap: () => setState(() {
                          final member = filteredMembers[index];

                          if (!selectedMembers.contains(member)) {
                            selectedMembers.add(member);
                          } else {
                            selectedMembers.remove(member);
                          }
                        }),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.text600,
                            ),
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MemberWidget(
                                avatarUrl: filteredMembers[index].avatarUrl,
                                name: filteredMembers[index].name,
                              ),
                              Visibility(
                                visible: selectedMembers.contains(
                                  filteredMembers[index],
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: AppColors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
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
              'Done',
              style: Style.activeButtonTextStyle,
            ),
            onTap: () => BlocProvider.of<ShareAccountBloc>(context).add(
              ShareAccountEvent.addSharedToAccount(
                accountId: widget.accountId,
                sharedWith: selectedMembers,
              ),
            ),
            decoration: Style.activeButtonDecoration,
            showInProgress: false,
          ),
        ),
      ),
    );
  }
}
