import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/core/utils/usecase.dart';
import 'package:iqvia_kpi/features/merge_requests/data/models/merge_request.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entities/merge_request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entities/request_entity.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/get_saved_members_usecase.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/get_tracked_project_id.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/usecases/merge_request_usecase.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';

part 'merge_request_bloc.freezed.dart';

class MergeRequestBloc extends Bloc<MergeRequestEvent, MergeRequestState> {
  MergeRequestBloc()
      : mergeRequestUsecase = locator<MergeRequestUsecase>(),
        getSavedMembersUseCase = locator<GetSavedMembersUseCase>(),
        getTrackedProjectIdUseCase = locator<GetTrackedProjectIdUseCase>(),
        super(const MergeRequestState()) {
    on(_onEvent);
  }

  final MergeRequestUsecase mergeRequestUsecase;
  final GetSavedMembersUseCase getSavedMembersUseCase;
  final GetTrackedProjectIdUseCase getTrackedProjectIdUseCase;

  Future<void> _onEvent(
    MergeRequestEvent event,
    Emitter<MergeRequestState> emit,
  ) async {
    await event.when(
      fetch: (startDate, endDate) async {
        final members = getSavedMembersUseCase(const NoParams());
        emit(MergeRequestState.loading(members: members));

        final mergeRequests = await mergeRequestUsecase(
          RequestEntity(
            projectId: getTrackedProjectIdUseCase(const NoParams())!,
            createdAt: startDate.subtract(const Duration(seconds: 1)),
            createdBefore: endDate.add(const Duration(seconds: 1)),
          ),
        );

        final devs = <String, List<MergeRequestEntity>>{};
        for (final member in members.members) {
          devs[member.name] = mergeRequests
              .where(
                (element) =>
                    (element as MergeRequest)
                        .author
                        .username
                        .toLowerCase()
                        .compareTo(member.username.toLowerCase()) ==
                    0,
              )
              .toList();
        }

        emit(MergeRequestState.loaded(mergeRequests: devs));
      },
    );
  }
}

@freezed
class MergeRequestEvent with _$MergeRequestEvent {
  const factory MergeRequestEvent.fetch({
    required DateTime startDate,
    required DateTime endDate,
  }) = _Fetch;
}

@freezed
class MergeRequestState with _$MergeRequestState {
  const factory MergeRequestState() = _MergeRequestState;

  const factory MergeRequestState.loading({
    required MembersEntity members,
  }) = _Loading;

  const factory MergeRequestState.loaded({
    required Map<String, List<MergeRequestEntity>> mergeRequests,
  }) = _Loaded;
}
