class ProjectEntity {
  const ProjectEntity({
    required this.id,
    required this.avatarUrl,
    required this.nameWithNamespace,
  });

  final int id;
  final String nameWithNamespace;
  final String? avatarUrl;
}
