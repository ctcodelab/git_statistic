import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:git_statistic/features/onboarding/domain/entities/project_entity.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project implements ProjectEntity {
  const factory Project({
    required int id,
    @JsonKey(name: 'name_with_namespace') required String nameWithNamespace,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
    @JsonKey(name: 'last_activity_at') required DateTime lastActivityAt,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}
