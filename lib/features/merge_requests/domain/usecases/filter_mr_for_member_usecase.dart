import 'package:git_statistic/core/utils/usecase.dart';
import 'package:git_statistic/features/merge_requests/domain/entities/filter_mr_request_entity.dart';
import 'package:git_statistic/features/merge_requests/domain/entities/merge_request_entity.dart';

class FilterMRForMemberUsecase implements UseCase<Map<String, List<MergeRequestEntity>>, FilterMrRequestEntity> {
  @override
  Map<String, List<MergeRequestEntity>> call(FilterMrRequestEntity params) {
    /// Firstly initiate our containers with an empty MRs list
    final memberMRs = <String, List<MergeRequestEntity>>{}..[params.member.name] = [];
    final sharedMembers = <String, String>{};
    for (final sharedMember in params.member.sharedWith) {
      memberMRs[sharedMember.name] = [];
      sharedMembers[sharedMember.recognitionKey] = sharedMember.name;
    }

    /// Then check if we have shared members for this account
    /// In case yes we creating a recognition keys list
    final recognitionKeys = sharedMembers.isEmpty ? null : sharedMembers.keys.map((e) => e.toLowerCase()).toList();
    for (final mr in params.mrs) {
      bool containsRecognitionKey = false;

      /// Do we have recognition keys?
      if (recognitionKeys != null) {
        /// If do we check if this exactly MR have at least one of our recognition key
        containsRecognitionKey = recognitionKeys.where((e) => mr.description.toLowerCase().contains(e)).isNotEmpty;
      }

      /// If this MR doesn't have any recognition key
      if (!containsRecognitionKey) {
        /// Then we checking if this MR created by the author we interested in
        if (mr.author.username.compareTo(params.member.username) == 0) {
          memberMRs[params.member.name]!.add(mr);
        }
      } else {
        /// Otherwise, if this MR have a recognition key
        sharedMembers.forEach((key, name) {
          /// We are looking which exactly and counting this MR to the appropriate person
          if (mr.description.toLowerCase().contains(key.toLowerCase())) {
            memberMRs[name]!.add(mr);
          }
        });
      }
    }

    return memberMRs;
  }
}
