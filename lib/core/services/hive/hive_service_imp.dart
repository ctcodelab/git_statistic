import 'package:hive_flutter/hive_flutter.dart';
import 'package:iqvia_kpi/core/services/hive/hive_service.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/member_entity.dart';
import 'package:iqvia_kpi/features/onboarding/domain/entities/members_entity.dart';

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

    _box = await Hive.openBox(boxName);
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
}
