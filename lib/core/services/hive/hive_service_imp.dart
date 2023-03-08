import 'package:hive_flutter/hive_flutter.dart';
import 'package:git_statistic/core/services/hive/hive_service.dart';
import 'package:git_statistic/features/onboarding/domain/entities/member_entity.dart';
import 'package:git_statistic/features/onboarding/domain/entities/members_entity.dart';
import 'package:git_statistic/features/share_account/domain/entities/shared_member_entity.dart';

class HiveServiceImpl implements HiveService {
  late final Box _box;

  static const onboardingPassed = 'onboardingPassed';
  static const trackedProjectId = 'trackedProjectId';
  static const selectedProjectMembers = 'selectedProjectMembers';

  @override
  Future init(final String boxName) async {
    await Hive.initFlutter();

    Hive.registerAdapter(MemberEntityAdapter());
    Hive.registerAdapter(MembersEntityAdapter());
    Hive.registerAdapter(SharedMemberEntityAdapter());

    try {
      _box = await Hive.openBox(boxName);
    } catch (_) {
      await Hive.deleteBoxFromDisk(boxName);
    }
  }

  @override
  T getValue<T>(dynamic key, {T? defaultValue}) {
    return _box.get(key, defaultValue: defaultValue) as T;
  }

  @override
  Future setValue<T>(dynamic key, T value) {
    return _box.put(key, value);
  }

  @override
  Future<int> clear() {
    return _box.clear();
  }

  @override
  Stream<BoxEvent> listenKeyChanges(dynamic key) => _box.watch(key: key);
}
