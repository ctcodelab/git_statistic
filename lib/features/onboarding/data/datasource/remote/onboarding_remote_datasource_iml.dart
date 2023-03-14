import 'package:git_statistic/core/services/git/git_service.dart';
import 'package:git_statistic/core/services/git/gitlab_service.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/onboarding/data/datasource/onboarding_datasource.dart';
import 'package:git_statistic/features/onboarding/data/models/member.dart';
import 'package:git_statistic/features/onboarding/data/models/members.dart';
import 'package:git_statistic/features/onboarding/data/models/project.dart';

class OnboardingRemoteDatasourceImpl implements OnboardingDatasource {
  OnboardingRemoteDatasourceImpl() : gitService = locator<GitLabService>();

  final GitService gitService;

  @override
  bool onboardingCompleted() {
    throw UnimplementedError('Use the local datasource.');
  }

  @override
  Future<List<Project>> projectsMembership() async {
    final projects = await gitService.getMembershipProjects();
    return projects.map((json) => Project.fromJson(json)).toList();
  }

  @override
  void setTrackedProjectId(_) {
    throw UnimplementedError('Use the local datasource.');
  }

  @override
  Future<Members> projectMembers(int id) async {
    final members = await gitService.getProjectMembers(projectId: id);

    return Members(
      members: members.map((json) => Member.fromJson(json)).where((element) => element.state == 'active').toList(),
    );
  }

  @override
  void setSelectedProjectMembers(_) {
    throw UnimplementedError('Use the local datasource.');
  }

  @override
  void setOnboardingComplete(_) {
    throw UnimplementedError('Use the local datasource.');
  }
}
