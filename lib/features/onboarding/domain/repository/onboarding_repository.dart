import 'package:iqvia_kpi/features/onboarding/data/models/members.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/project_entity.dart';

abstract class IOnboardingRepository {
  bool onboardingPassed();

  Future<List<ProjectEntity>> membershipProjects();

  void setTrackedProjectId(int? id);

  Future<Members> getProjectMembers(int id);

  void setSelectedProjectMembers(MembersEntity members);

  void setOnboardingComplete(bool complete);
}
