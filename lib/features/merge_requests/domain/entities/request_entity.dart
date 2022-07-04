class RequestEntity {
  const RequestEntity({
    required this.createdAt,
    required this.createdBefore,
    required this.projectId,
  });

  final DateTime createdAt;
  final DateTime createdBefore;
  final int projectId;
}
