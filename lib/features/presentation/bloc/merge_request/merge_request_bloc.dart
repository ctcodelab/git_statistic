import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/domain/entetties/merge_request_entity.dart';
import 'package:iqvia_kpi/features/domain/usecases/merge_request_usecase.dart';
import 'package:iqvia_kpi/features/domain/usecases/usecase.dart';

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
        final mergeRequests = await mergeRequestUsecase(NoParams());
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
    required List<MergeRequestEntity> mergeRequests,
  }) = _Loaded;
}
