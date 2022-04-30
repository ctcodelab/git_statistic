import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/data/models/author.dart';
import 'package:iqvia_kpi/features/data/models/discussion.dart';
import 'package:iqvia_kpi/features/domain/entetties/merge_request_entity.dart';

part 'merge_request.freezed.dart';
part 'merge_request.g.dart';

@freezed
class MergeRequest with _$MergeRequest implements MergeRequestEntity {
  const factory MergeRequest({
    @JsonKey(name: 'author') required Author author,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'draft') required bool draft,
    required int iid,
    required String state,
    required String description,
    required List<Discussion> discussion,
  }) = _MergeRequest;

  factory MergeRequest.fromJson(Map<String, dynamic> json) =>
      _$MergeRequestFromJson(json);
}
