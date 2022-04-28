import 'package:iqvia_kpi/features/domain/entetties/merge_request_entity.dart';
import 'package:iqvia_kpi/features/domain/repository/merge_request_repository.dart';
import 'package:iqvia_kpi/features/domain/usecases/usecase.dart';

class MergeRequestUsecase implements UseCase<MergeRequestEntity, NoParams> {
  const MergeRequestUsecase({required this.repository});

  final IMergeRequestRepository repository;

  @override
  Future<List<MergeRequestEntity>> call(params) async {
    return repository.getMergeRequests();
  }
}
