import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';
import 'package:iqvia_kpi/core/ui/header_info_widget.dart';
import 'package:iqvia_kpi/core/ui/widgets/wide_button_widget.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/member_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';
import 'package:iqvia_kpi/features/onboarding/presentation/widgets/member_widget.dart';
import 'package:iqvia_kpi/features/share_account/presentation/bloc/share_account_bloc.dart';
import 'package:iqvia_kpi/features/share_account/presentation/widgets/add_new_member_widget.dart';
import 'package:iqvia_kpi/features/share_account/presentation/widgets/shared_member_widget.dart';

class ShareAccountOverviewWidget extends StatefulWidget {
  const ShareAccountOverviewWidget({required this.members, Key? key}) : super(key: key);

  final MembersEntity members;

  @override
  State<StatefulWidget> createState() => _ShareAccountOverviewWidgetState();
}

class _ShareAccountOverviewWidgetState extends State<ShareAccountOverviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderInfoWidget(
            text: 'Here you can share an account. To do this click on the plus button.\n'
                'Clicking on the item itself you can collapse or expand it',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: AddNewMemberWidget(
                onSubmitted: (name) {
                  final member = MemberEntity(
                    id: UniqueKey().hashCode,
                    avatarUrl: null,
                    name: name,
                    state: 'active',
                    username: '',
                    sharedWith: [],
                  );

                  setState(() {});
                  BlocProvider.of<ShareAccountBloc>(context).add(
                    ShareAccountEvent.addNewMember(member),
                  );
                },
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ListView.builder(
                itemCount: widget.members.length,
                padding: const EdgeInsets.only(top: 10, bottom: 80),
                itemBuilder: (_, index) => ExpandableNotifier(
                  initialExpanded: widget.members[index].sharedWith.isNotEmpty,
                  key: UniqueKey(),
                  child: ScrollOnExpand(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: ExpandablePanel(
                              collapsed: ExpandableButton(
                                child: MemberWidget(
                                  avatarUrl: widget.members[index].avatarUrl,
                                  name: widget.members[index].name,
                                ),
                              ),
                              expanded: ExpandableButton(
                                child: SharedMemberWidget(
                                  member: widget.members[index],
                                  onDelete: (shareIndex) {
                                    widget.members[index].sharedWith.removeAt(shareIndex);
                                    BlocProvider.of<ShareAccountBloc>(context).add(
                                      ShareAccountEvent.update(widget.members),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              BlocProvider.of<ShareAccountBloc>(context).add(
                                ShareAccountEvent.shareAccount(
                                  accountName: widget.members[index].name,
                                  accountId: widget.members[index].id,
                                ),
                              );
                            },
                            icon: Container(
                              decoration: BoxDecoration(
                                color: AppColors.text600.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(Icons.add),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
            style: Style.activeButtonTextStyle,
          ),
          onTap: () => BlocProvider.of<ShareAccountBloc>(context).add(
            const ShareAccountEvent.recognitionKeys(),
          ),
          decoration: Style.activeButtonDecoration,
          showInProgress: false,
        ),
      ),
    );
  }
}
