import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/get_saved_members_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/member_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/usecases/set_selected_project_members.dart';
import 'package:iqvia_kpi/features/share_account/domain/entities/shared_member_entity.dart';
import 'package:iqvia_kpi/features/share_account/domain/entities/shared_members_request_entity.dart';
import 'package:iqvia_kpi/features/share_account/domain/usecases/update_shared_members_usecase.dart';

part 'share_account_bloc.freezed.dart';

class ShareAccountBloc extends Bloc<ShareAccountEvent, ShareAccountState> {
  ShareAccountBloc({required this.onComplete})
      : setSelectedProjectMembers = locator<SetSelectedProjectMembers>(),
        getSavedMembersUseCase = locator<GetSavedMembersUseCase>(),
        updateSharedMembersUsecase = locator<UpdateSharedMembersUsecase>(),
        super(const ShareAccountState()) {
    on(_onEvent);
  }

  final SetSelectedProjectMembers setSelectedProjectMembers;
  final GetSavedMembersUseCase getSavedMembersUseCase;
  final UpdateSharedMembersUsecase updateSharedMembersUsecase;
  final VoidCallback onComplete;

  Future<void> _onEvent(ShareAccountEvent event, Emitter<ShareAccountState> emit) async {
    event.when(
      fetch: () {
        final members = getSavedMembersUseCase(const NoParams());
        emit(ShareAccountState.accountOverview(members));
      },
      addNewMember: (member) {
        final members = getSavedMembersUseCase(const NoParams());
        members.members.add(member);
        setSelectedProjectMembers(members);
        emit(ShareAccountState.members(members));
      },
      shareAccount: (accountName, accountId) {
        final members = getSavedMembersUseCase(const NoParams());
        emit(ShareAccountState.addShareToAccount(accountName: accountName, accountId: accountId));
        emit(ShareAccountState.members(members));
      },
      addSharedToAccount: (accountId, sharedWith) {
        final members = updateSharedMembersUsecase(
          SharedMembersRequestEntity(
            accountId: accountId,
            members: getSavedMembersUseCase(const NoParams()),
            sharedWith: sharedWith,
          ),
        );

        setSelectedProjectMembers(members);
        emit(ShareAccountState.accountOverview(members));
      },
      recognitionKeys: () {
        final members = getSavedMembersUseCase(const NoParams());

        final sharedMembers = members.members
            .where((e) => e.sharedWith.isNotEmpty)
            .map((e) => e.sharedWith)
            .expand((e) => e)
            .toList();

        if (sharedMembers.isNotEmpty) {
          emit(ShareAccountState.setRecognitionKeys(sharedMembers));
        } else {
          onComplete();
        }
      },
      setRecognitionKeyFor: (accountId, key) {
        final members = getSavedMembersUseCase(const NoParams());
        final member = members.members.firstWhere(
          (e) => e.sharedWith.where((e) => e.id == accountId).isNotEmpty,
        );
        final sharedMember = member.sharedWith.firstWhere((e) => e.id == accountId);
        sharedMember.recognitionKey = key;

        setSelectedProjectMembers(members);
      },
      complete: onComplete,
      update: (members) {
        setSelectedProjectMembers(members);
        add(const ShareAccountEvent.fetch());
      },
    );
  }
}

@freezed
class ShareAccountEvent with _$ShareAccountEvent {
  const factory ShareAccountEvent.fetch() = _Fetch;

  const factory ShareAccountEvent.addNewMember(MemberEntity member) = _AddNewMember;

  const factory ShareAccountEvent.shareAccount({
    required String accountName,
    required int accountId,
  }) = _ShareAccount;

  const factory ShareAccountEvent.addSharedToAccount({
    required int accountId,
    required Set<MemberEntity> sharedWith,
  }) = _AddSharedToAccount;

  const factory ShareAccountEvent.recognitionKeys() = _RecognitionKeys;

  const factory ShareAccountEvent.setRecognitionKeyFor({
    required int accountId,
    required String key,
  }) = _SetRecognitionKeyFor;

  const factory ShareAccountEvent.update(MembersEntity members) = _Update;

  const factory ShareAccountEvent.complete() = _Complete;
}

@Freezed(equal: false)
class ShareAccountState with _$ShareAccountState {
  const factory ShareAccountState() = _ShareAccountState;

  const factory ShareAccountState.accountOverview(MembersEntity members) = _AccountsOverview;

  const factory ShareAccountState.addShareToAccount({
    required String accountName,
    required int accountId,
  }) = _AddShareToAccount;

  const factory ShareAccountState.members(MembersEntity members) = _Members;

  const factory ShareAccountState.setRecognitionKeys(
    List<SharedMemberEntity> members,
  ) = _SetRecognitionKeys;
}
