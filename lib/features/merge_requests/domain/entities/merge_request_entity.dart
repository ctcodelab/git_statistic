import 'package:iqvia_kpi/features/merge_requests/domain/entities/author_entity.dart';

class MergeRequestEntity {
  const MergeRequestEntity({
    required this.author,
    required this.createdAt,
    required this.draft,
    required this.iid,
    required this.state,
    required this.description,
  });

  final AuthorEntity author;
  final DateTime createdAt;
  final bool draft;
  final int iid;
  final String state;
  final String description;
}
