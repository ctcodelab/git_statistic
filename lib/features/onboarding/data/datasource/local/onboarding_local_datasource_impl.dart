import 'package:git_statistic/core/services/hive/hive_service.dart';
import 'package:git_statistic/core/services/hive/hive_service_imp.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/onboarding/data/datasource/onboarding_datasource.dart';
import 'package:git_statistic/features/onboarding/data/models/members.dart';
import 'package:git_statistic/features/onboarding/data/models/project.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';

class OnboardingLocalDatasourceImpl implements OnboardingDatasource {
  OnboardingLocalDatasourceImpl() : hiveService = locator<HiveServiceImpl>();

  final HiveService hiveService;

  @override
  bool onboardingCompleted() {
    final completed = hiveService.getValue(HiveServiceImpl.onboardingPassed);
    return completed != null && completed;
  }

  @override
  void setTrackedProjectId(int? id) {
    hiveService.setValue(HiveServiceImpl.trackedProjectId, id);
  }

  @override
  Future<List<Project>> projectsMembership() async {
    throw UnimplementedError('Use the remote datasource.');
  }

  @override
  Future<Members> projectMembers(_) {
    throw UnimplementedError('Use the remote datasource.');
  }

  @override
  void setSelectedProjectMembers(MembersEntity members) {
    hiveService.setValue(HiveServiceImpl.selectedProjectMembers, members);
  }

  @override
  void setOnboardingComplete(bool complete) {
    hiveService.setValue(HiveServiceImpl.onboardingPassed, complete);
  }
}
