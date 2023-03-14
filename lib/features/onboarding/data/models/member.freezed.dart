// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<SharedMemberEntity> get sharedWith => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      String name,
      String state,
      String username,
      @JsonKey(ignore: true) List<SharedMemberEntity> sharedWith});
}

/// @nodoc
class _$MemberCopyWithImpl<$Res> implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  final Member _value;
  // ignore: unused_field
  final $Res Function(Member) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? username = freezed,
    Object? sharedWith = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      sharedWith: sharedWith == freezed
          ? _value.sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as List<SharedMemberEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$_MemberCopyWith(_$_Member value, $Res Function(_$_Member) then) =
      __$$_MemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      String name,
      String state,
      String username,
      @JsonKey(ignore: true) List<SharedMemberEntity> sharedWith});
}

/// @nodoc
class __$$_MemberCopyWithImpl<$Res> extends _$MemberCopyWithImpl<$Res>
    implements _$$_MemberCopyWith<$Res> {
  __$$_MemberCopyWithImpl(_$_Member _value, $Res Function(_$_Member) _then)
      : super(_value, (v) => _then(v as _$_Member));

  @override
  _$_Member get _value => super._value as _$_Member;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatarUrl = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? username = freezed,
    Object? sharedWith = freezed,
  }) {
    return _then(_$_Member(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: avatarUrl == freezed
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      sharedWith: sharedWith == freezed
          ? _value._sharedWith
          : sharedWith // ignore: cast_nullable_to_non_nullable
              as List<SharedMemberEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Member implements _Member {
  _$_Member(
      {required this.id,
      @JsonKey(name: 'avatar_url')
          required this.avatarUrl,
      required this.name,
      required this.state,
      required this.username,
      @JsonKey(ignore: true)
          final List<SharedMemberEntity> sharedWith = const []})
      : _sharedWith = sharedWith;

  factory _$_Member.fromJson(Map<String, dynamic> json) =>
      _$$_MemberFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  final String name;
  @override
  final String state;
  @override
  final String username;
  final List<SharedMemberEntity> _sharedWith;
  @override
  @JsonKey(ignore: true)
  List<SharedMemberEntity> get sharedWith {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedWith);
  }

  @override
  String toString() {
    return 'Member(id: $id, avatarUrl: $avatarUrl, name: $name, state: $state, username: $username, sharedWith: $sharedWith)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Member &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.avatarUrl, avatarUrl) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other._sharedWith, _sharedWith));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(avatarUrl),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(_sharedWith));

  @JsonKey(ignore: true)
  @override
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      __$$_MemberCopyWithImpl<_$_Member>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberToJson(this);
  }
}

abstract class _Member implements Member {
  factory _Member(
          {required final int id,
          @JsonKey(name: 'avatar_url') required final String? avatarUrl,
          required final String name,
          required final String state,
          required final String username,
          @JsonKey(ignore: true) final List<SharedMemberEntity> sharedWith}) =
      _$_Member;

  factory _Member.fromJson(Map<String, dynamic> json) = _$_Member.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  List<SharedMemberEntity> get sharedWith => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      throw _privateConstructorUsedError;
}
