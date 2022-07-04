import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/merge_requests/domain/entities/author_entity.dart';

part 'author.freezed.dart';
part 'author.g.dart';

@freezed
class Author with _$Author implements AuthorEntity {
  const factory Author({
    required String name,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    required String username,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
