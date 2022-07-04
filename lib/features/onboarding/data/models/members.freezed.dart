// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'members.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Members {
  List<Member> get members => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MembersCopyWith<Members> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembersCopyWith<$Res> {
  factory $MembersCopyWith(Members value, $Res Function(Members) then) =
      _$MembersCopyWithImpl<$Res>;
  $Res call({List<Member> members});
}

/// @nodoc
class _$MembersCopyWithImpl<$Res> implements $MembersCopyWith<$Res> {
  _$MembersCopyWithImpl(this._value, this._then);

  final Members _value;
  // ignore: unused_field
  final $Res Function(Members) _then;

  @override
  $Res call({
    Object? members = freezed,
  }) {
    return _then(_value.copyWith(
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc
abstract class _$$_MembersCopyWith<$Res> implements $MembersCopyWith<$Res> {
  factory _$$_MembersCopyWith(
          _$_Members value, $Res Function(_$_Members) then) =
      __$$_MembersCopyWithImpl<$Res>;
  @override
  $Res call({List<Member> members});
}

/// @nodoc
class __$$_MembersCopyWithImpl<$Res> extends _$MembersCopyWithImpl<$Res>
    implements _$$_MembersCopyWith<$Res> {
  __$$_MembersCopyWithImpl(_$_Members _value, $Res Function(_$_Members) _then)
      : super(_value, (v) => _then(v as _$_Members));

  @override
  _$_Members get _value => super._value as _$_Members;

  @override
  $Res call({
    Object? members = freezed,
  }) {
    return _then(_$_Members(
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<Member>,
    ));
  }
}

/// @nodoc

class _$_Members extends _Members {
  const _$_Members({required final List<Member> members})
      : _members = members,
        super._();

  final List<Member> _members;
  @override
  List<Member> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'Members(members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Members &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_members));

  @JsonKey(ignore: true)
  @override
  _$$_MembersCopyWith<_$_Members> get copyWith =>
      __$$_MembersCopyWithImpl<_$_Members>(this, _$identity);
}

abstract class _Members extends Members {
  const factory _Members({required final List<Member> members}) = _$_Members;
  const _Members._() : super._();

  @override
  List<Member> get members => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MembersCopyWith<_$_Members> get copyWith =>
      throw _privateConstructorUsedError;
}
