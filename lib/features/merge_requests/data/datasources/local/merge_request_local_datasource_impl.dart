import 'package:git_statistic/core/services/hive/hive_service.dart';
import 'package:git_statistic/core/services/hive/hive_service_imp.dart';
import 'package:git_statistic/core/utils/locator.dart';
import 'package:git_statistic/features/merge_requests/data/datasources/merge_requests_datasource.dart';
import 'package:git_statistic/features/merge_requests/data/models/merge_request.dart';
import 'package:git_statistic/features/merge_requests/domain/entities/request_entity.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';

class MergeRequestLocalDatasourceImpl implements IMergeRequestDataSource {
  MergeRequestLocalDatasourceImpl() : hiveService = locator<HiveServiceImpl>();

  final HiveService hiveService;

  @override
  Future<List<MergeRequest>> getMergeRequests(RequestEntity request) {
    throw UnimplementedError('Use the remote datasource');
  }

  @override
  MembersEntity getSavedMembers() {
    return hiveService.getValue(HiveServiceImpl.selectedProjectMembers);
  }

  @override
  int? getTrackedProjectId() {
    return hiveService.getValue(HiveServiceImpl.trackedProjectId);
  }
}
