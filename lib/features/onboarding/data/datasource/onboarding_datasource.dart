import 'package:iqvia_kpi/features/onboarding/data/models/members.dart';
import 'package:iqvia_kpi/features/onboarding/data/models/project.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';

abstract class IOnboardingDatasource {
  bool onboardingCompleted();

  Future<List<Project>> projectsMembership();

  void setTrackedProjectId(int? id);

  Future<Members> projectMembers(int id);

  void setSelectedProjectMembers(MembersEntity members);

  void setOnboardingComplete(bool complete);
}
