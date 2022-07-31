abstract class ProjectEntity {
  const ProjectEntity({
    required this.id,
    required this.avatarUrl,
    required this.nameWithNamespace,
    required this.lastActivityAt,
  });

  final int id;
  final String nameWithNamespace;
  final String? avatarUrl;
  final DateTime lastActivityAt;
}
