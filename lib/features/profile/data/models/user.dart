import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:iqvia_kpi/features/profile/domain/enteties/user_entity.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User implements UserEntity {
  const factory User(
      {@JsonKey(name: 'avatar_url') required String? avatarUrl,
      required String name}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
