class MergeRequestEntity {
  const MergeRequestEntity({
    required this.createdAt,
    required this.draft,
    required this.iid,
    required this.state,
    required this.description,
  });

  final DateTime createdAt;
  final bool draft;
  final int iid;
  final String state;
  final String description;
}
