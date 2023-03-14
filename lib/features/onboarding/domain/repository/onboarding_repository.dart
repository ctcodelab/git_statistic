import 'package:git_statistic/features/onboarding/data/models/members.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';
import 'package:git_statistic/features/onboarding/domain/entities/project_entity.dart';

abstract class OnboardingRepository {
  bool onboardingPassed();

  Future<List<ProjectEntity>> membershipProjects();

  void setTrackedProjectId(int? id);

  Future<Members> getProjectMembers(int id);

  void setSelectedProjectMembers(MembersEntity members);

  void setOnboardingComplete(bool complete);
}
