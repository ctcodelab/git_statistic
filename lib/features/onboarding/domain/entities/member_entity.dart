import 'package:hive/hive.dart';
import 'package:iqvia_kpi/core/constants/constants.dart';

part 'member_entity.g.dart';

@HiveType(typeId: HiveId.memberId)
class MemberEntity {
  const MemberEntity({
    required this.id,
    required this.avatarUrl,
    required this.name,
    required this.state,
    required this.username,
  });

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String? avatarUrl;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String state;
  @HiveField(4)
  final String username;
}
