import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/domain/entetties/author_entity.dart';
import 'package:iqvia_kpi/features/domain/entetties/merge_request_entity.dart';

part 'merge_request.freezed.dart';

@freezed
class MergeRequest with _$MergeRequest implements MergeRequestEntity {
  const factory MergeRequest({
    required AuthorEntity authorEntity,
  }) = _MergeRequest;
}
