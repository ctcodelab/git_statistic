import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/data/models/author.dart';
import 'package:iqvia_kpi/features/domain/entetties/discussion_entity.dart';

part 'discussion.freezed.dart';
part 'discussion.g.dart';

@freezed
class Discussion with _$Discussion implements DiscussionEntity {
  const factory Discussion({
    required String body,
    required Author author,
  }) = _Discussion;

  factory Discussion.fromJson(Map<String, dynamic> json) =>
      _$DiscussionFromJson(json);
}
