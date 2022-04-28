import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/domain/entetties/author_entity.dart';

part 'author.freezed.dart';

@freezed
class Author with _$Author implements AuthorEntity {
  const factory Author({
    required String name,
    required String avatarUrl,
  }) = _Author;
}
