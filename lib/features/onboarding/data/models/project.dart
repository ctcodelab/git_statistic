import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/project_entity.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project implements ProjectEntity {
  const factory Project({
    required int id,
    @JsonKey(name: 'name_with_namespace') required String nameWithNamespace,
    @JsonKey(name: 'avatar_url') required String? avatarUrl,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}