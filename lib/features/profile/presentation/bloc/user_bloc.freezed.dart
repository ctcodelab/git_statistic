// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(BuildContext context) setNewProject,
    required TResult Function(BuildContext context) setNewMembers,
    required TResult Function(BuildContext context) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetNewProject value) setNewProject,
    required TResult Function(_SetNewMembers value) setNewMembers,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, (v) => _then(v as _$_Fetch));

  @override
  _$_Fetch get _value => super._value as _$_Fetch;
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch();

  @override
  String toString() {
    return 'UserEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(BuildContext context) setNewProject,
    required TResult Function(BuildContext context) setNewMembers,
    required TResult Function(BuildContext context) logout,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetNewProject value) setNewProject,
    required TResult Function(_SetNewMembers value) setNewMembers,
    required TResult Function(_Logout value) logout,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements UserEvent {
  const factory _Fetch() = _$_Fetch;
}

/// @nodoc
abstract class _$$_SetNewProjectCopyWith<$Res> {
  factory _$$_SetNewProjectCopyWith(
          _$_SetNewProject value, $Res Function(_$_SetNewProject) then) =
      __$$_SetNewProjectCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_SetNewProjectCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$_SetNewProjectCopyWith<$Res> {
  __$$_SetNewProjectCopyWithImpl(
      _$_SetNewProject _value, $Res Function(_$_SetNewProject) _then)
      : super(_value, (v) => _then(v as _$_SetNewProject));

  @override
  _$_SetNewProject get _value => super._value as _$_SetNewProject;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_$_SetNewProject(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_SetNewProject implements _SetNewProject {
  const _$_SetNewProject({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.setNewProject(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetNewProject &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_SetNewProjectCopyWith<_$_SetNewProject> get copyWith =>
      __$$_SetNewProjectCopyWithImpl<_$_SetNewProject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(BuildContext context) setNewProject,
    required TResult Function(BuildContext context) setNewMembers,
    required TResult Function(BuildContext context) logout,
  }) {
    return setNewProject(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
  }) {
    return setNewProject?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
    required TResult orElse(),
  }) {
    if (setNewProject != null) {
      return setNewProject(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetNewProject value) setNewProject,
    required TResult Function(_SetNewMembers value) setNewMembers,
    required TResult Function(_Logout value) logout,
  }) {
    return setNewProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
  }) {
    return setNewProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (setNewProject != null) {
      return setNewProject(this);
    }
    return orElse();
  }
}

abstract class _SetNewProject implements UserEvent {
  const factory _SetNewProject({required final BuildContext context}) =
      _$_SetNewProject;

  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetNewProjectCopyWith<_$_SetNewProject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetNewMembersCopyWith<$Res> {
  factory _$$_SetNewMembersCopyWith(
          _$_SetNewMembers value, $Res Function(_$_SetNewMembers) then) =
      __$$_SetNewMembersCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_SetNewMembersCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$_SetNewMembersCopyWith<$Res> {
  __$$_SetNewMembersCopyWithImpl(
      _$_SetNewMembers _value, $Res Function(_$_SetNewMembers) _then)
      : super(_value, (v) => _then(v as _$_SetNewMembers));

  @override
  _$_SetNewMembers get _value => super._value as _$_SetNewMembers;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_$_SetNewMembers(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_SetNewMembers implements _SetNewMembers {
  const _$_SetNewMembers({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.setNewMembers(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetNewMembers &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_SetNewMembersCopyWith<_$_SetNewMembers> get copyWith =>
      __$$_SetNewMembersCopyWithImpl<_$_SetNewMembers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(BuildContext context) setNewProject,
    required TResult Function(BuildContext context) setNewMembers,
    required TResult Function(BuildContext context) logout,
  }) {
    return setNewMembers(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
  }) {
    return setNewMembers?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
    required TResult orElse(),
  }) {
    if (setNewMembers != null) {
      return setNewMembers(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetNewProject value) setNewProject,
    required TResult Function(_SetNewMembers value) setNewMembers,
    required TResult Function(_Logout value) logout,
  }) {
    return setNewMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
  }) {
    return setNewMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (setNewMembers != null) {
      return setNewMembers(this);
    }
    return orElse();
  }
}

abstract class _SetNewMembers implements UserEvent {
  const factory _SetNewMembers({required final BuildContext context}) =
      _$_SetNewMembers;

  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetNewMembersCopyWith<_$_SetNewMembers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, (v) => _then(v as _$_Logout));

  @override
  _$_Logout get _value => super._value as _$_Logout;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_$_Logout(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'UserEvent.logout(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logout &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_LogoutCopyWith<_$_Logout> get copyWith =>
      __$$_LogoutCopyWithImpl<_$_Logout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(BuildContext context) setNewProject,
    required TResult Function(BuildContext context) setNewMembers,
    required TResult Function(BuildContext context) logout,
  }) {
    return logout(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
  }) {
    return logout?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(BuildContext context)? setNewProject,
    TResult Function(BuildContext context)? setNewMembers,
    TResult Function(BuildContext context)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_SetNewProject value) setNewProject,
    required TResult Function(_SetNewMembers value) setNewMembers,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_SetNewProject value)? setNewProject,
    TResult Function(_SetNewMembers value)? setNewMembers,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements UserEvent {
  const factory _Logout({required final BuildContext context}) = _$_Logout;

  BuildContext get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LogoutCopyWith<_$_Logout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(UserEntity user) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(UserEntity user)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(UserEntity user)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserState value) $default, {
    required TResult Function(_User value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
    TResult Function(_User value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, (v) => _then(v as _$_UserState));

  @override
  _$_UserState get _value => super._value as _$_UserState;
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState();

  @override
  String toString() {
    return 'UserState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(UserEntity user) user,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(UserEntity user)? user,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(UserEntity user)? user,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserState value) $default, {
    required TResult Function(_User value) user,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
    TResult Function(_User value)? user,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _UserState implements UserState {
  const factory _UserState() = _$_UserState;
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  $Res call({UserEntity user});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_User(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User({required this.user});

  @override
  final UserEntity user;

  @override
  String toString() {
    return 'UserState.user(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(UserEntity user) user,
  }) {
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(UserEntity user)? user,
  }) {
    return user?.call(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(UserEntity user)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserState value) $default, {
    required TResult Function(_User value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
    TResult Function(_User value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserState value)? $default, {
    TResult Function(_User value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements UserState {
  const factory _User({required final UserEntity user}) = _$_User;

  UserEntity get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
