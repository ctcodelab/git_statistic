import 'package:iqvia_kpi/core/utils/locator.dart';
import 'package:iqvia_kpi/features/onboarding/data/datasource/local/onboarding_local_datasource_impl.dart';
import 'package:iqvia_kpi/features/onboarding/data/datasource/onboarding_datasource.dart';
import 'package:iqvia_kpi/features/onboarding/data/datasource/remote/onboarding_remote_datasource_iml.dart';
import 'package:iqvia_kpi/features/onboarding/data/models/members.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/project_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/repository/onboarding_repository.dart';

class OnboardingRepositoryImpl implements IOnboardingRepository {
  OnboardingRepositoryImpl()
      : localDatasource = locator<OnboardingLocalDatasourceImpl>(),
        remoteDatasource = locator<OnboardingRemoteDatasourceImpl>();

  final IOnboardingDatasource localDatasource;
  final IOnboardingDatasource remoteDatasource;

  @override
  bool onboardingPassed() {
    return localDatasource.onboardingCompleted();
  }

  @override
  Future<List<ProjectEntity>> membershipProjects() async {
    return remoteDatasource.projectsMembership();
  }

  @override
  void setTrackedProjectId(int? id) {
    localDatasource.setTrackedProjectId(id);
  }

  @override
  Future<Members> getProjectMembers(int id) {
    return remoteDatasource.projectMembers(id);
  }

  @override
  void setSelectedProjectMembers(MembersEntity members) {
    localDatasource.setSelectedProjectMembers(members);
  }

  @override
  void setOnboardingComplete(bool complete) {
    localDatasource.setOnboardingComplete(complete);
  }
}
