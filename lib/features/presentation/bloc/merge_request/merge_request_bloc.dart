import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/core/config/config.dart';
import 'package:iqvia_kpi/core/utils/calendar.dart';
import 'package:iqvia_kpi/features/data/models/merge_request.dart';
import 'package:iqvia_kpi/features/domain/entetties/request_entity.dart';
import 'package:iqvia_kpi/features/domain/usecases/merge_request_usecase.dart';

part 'merge_request_bloc.freezed.dart';

class MergeRequestBloc extends Bloc<MergeRequestEvent, MergeRequestState> {
  MergeRequestBloc(this.mergeRequestUsecase)
      : super(const MergeRequestState()) {
    on(_onEvent);
  }

  final MergeRequestUsecase mergeRequestUsecase;

  Future<void> _onEvent(
    MergeRequestEvent event,
    Emitter<MergeRequestState> emit,
  ) async {
    await event.when(
      fetch: () async {
        final now = DateTime.now();
        final firstDateOfPrevWeek = Calendar.findFirstDateOfPreviousWeek(
          DateTime(
            now.year,
            now.month,
            now.day,
          ),
        );
        final lastDateOfPrevWeek = Calendar.findLastDateOfTheWeek(
          DateTime(
            firstDateOfPrevWeek.year,
            firstDateOfPrevWeek.month,
            firstDateOfPrevWeek.day,
            23,
            59,
            59,
          ),
        );

        final mergeRequests = await mergeRequestUsecase(
          RequestEntity(
            projectId: 4174,
            createdAt: firstDateOfPrevWeek.subtract(const Duration(seconds: 1)),
            createdBefore: lastDateOfPrevWeek.add(const Duration(seconds: 1)),
          ),
        );

        final devs = <String, List<MergeRequest>>{};
        DefaultConfig.devs.forEach((username, name) {
          if (username != 'rodion') {
            devs[name] = mergeRequests
                .where(
                  (element) =>
                      (element as MergeRequest)
                          .author
                          .username
                          .toLowerCase()
                          .compareTo(username.toLowerCase()) ==
                      0,
                )
                .toList() as List<MergeRequest>;
          } else {
            devs[name] = mergeRequests
                .where(
                  (element) =>
                      (element as MergeRequest)
                              .author
                              .username
                              .toLowerCase()
                              .compareTo(username.toLowerCase()) ==
                          0 &&
                      !element.description
                          .toLowerCase()
                          .contains('created by @ebeshkarev'),
                )
                .toList() as List<MergeRequest>;

            devs['Beshkarev Evgeniy'] = mergeRequests
                .where(
                  (element) =>
                      (element as MergeRequest)
                              .author
                              .username
                              .toLowerCase()
                              .compareTo(username.toLowerCase()) ==
                          0 &&
                      element.description
                          .toLowerCase()
                          .contains('created by @ebeshkarev'),
                )
                .toList() as List<MergeRequest>;
          }
        });

        emit(
          MergeRequestState.loaded(
            mergeRequests: devs,
            startDate: firstDateOfPrevWeek,
            endDate: lastDateOfPrevWeek,
          ),
        );
      },
    );
  }
}

@freezed
class MergeRequestEvent with _$MergeRequestEvent {
  const factory MergeRequestEvent.fetch() = _Fetch;
}

@freezed
class MergeRequestState with _$MergeRequestState {
  const factory MergeRequestState() = _MergeRequestState;

  const factory MergeRequestState.loaded({
    required Map<String, List<MergeRequest>> mergeRequests,
    required DateTime startDate,
    required DateTime endDate,
  }) = _Loaded;
}
