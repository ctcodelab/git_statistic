// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConditions,
    required TResult Function(String token) setToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function(String token)? setToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function(String token)? setToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConditions value) checkConditions,
    required TResult Function(_SetToken value) setToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_SetToken value)? setToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_SetToken value)? setToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$_CheckConditionsCopyWith<$Res> {
  factory _$$_CheckConditionsCopyWith(
          _$_CheckConditions value, $Res Function(_$_CheckConditions) then) =
      __$$_CheckConditionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckConditionsCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_CheckConditionsCopyWith<$Res> {
  __$$_CheckConditionsCopyWithImpl(
      _$_CheckConditions _value, $Res Function(_$_CheckConditions) _then)
      : super(_value, (v) => _then(v as _$_CheckConditions));

  @override
  _$_CheckConditions get _value => super._value as _$_CheckConditions;
}

/// @nodoc

class _$_CheckConditions implements _CheckConditions {
  const _$_CheckConditions();

  @override
  String toString() {
    return 'LoginEvent.checkConditions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckConditions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConditions,
    required TResult Function(String token) setToken,
  }) {
    return checkConditions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function(String token)? setToken,
  }) {
    return checkConditions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function(String token)? setToken,
    required TResult orElse(),
  }) {
    if (checkConditions != null) {
      return checkConditions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConditions value) checkConditions,
    required TResult Function(_SetToken value) setToken,
  }) {
    return checkConditions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_SetToken value)? setToken,
  }) {
    return checkConditions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_SetToken value)? setToken,
    required TResult orElse(),
  }) {
    if (checkConditions != null) {
      return checkConditions(this);
    }
    return orElse();
  }
}

abstract class _CheckConditions implements LoginEvent {
  const factory _CheckConditions() = _$_CheckConditions;
}

/// @nodoc
abstract class _$$_SetTokenCopyWith<$Res> {
  factory _$$_SetTokenCopyWith(
          _$_SetToken value, $Res Function(_$_SetToken) then) =
      __$$_SetTokenCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class __$$_SetTokenCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_SetTokenCopyWith<$Res> {
  __$$_SetTokenCopyWithImpl(
      _$_SetToken _value, $Res Function(_$_SetToken) _then)
      : super(_value, (v) => _then(v as _$_SetToken));

  @override
  _$_SetToken get _value => super._value as _$_SetToken;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$_SetToken(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SetToken implements _SetToken {
  const _$_SetToken({required this.token});

  @override
  final String token;

  @override
  String toString() {
    return 'LoginEvent.setToken(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetToken &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_SetTokenCopyWith<_$_SetToken> get copyWith =>
      __$$_SetTokenCopyWithImpl<_$_SetToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConditions,
    required TResult Function(String token) setToken,
  }) {
    return setToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function(String token)? setToken,
  }) {
    return setToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function(String token)? setToken,
    required TResult orElse(),
  }) {
    if (setToken != null) {
      return setToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConditions value) checkConditions,
    required TResult Function(_SetToken value) setToken,
  }) {
    return setToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_SetToken value)? setToken,
  }) {
    return setToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_SetToken value)? setToken,
    required TResult orElse(),
  }) {
    if (setToken != null) {
      return setToken(this);
    }
    return orElse();
  }
}

abstract class _SetToken implements LoginEvent {
  const factory _SetToken({required final String token}) = _$_SetToken;

  String get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SetTokenCopyWith<_$_SetToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() regular,
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? regular,
    TResult Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? regular,
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Regular value) regular,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Regular value)? regular,
    TResult Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Regular value)? regular,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState();

  @override
  String toString() {
    return 'LoginState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() regular,
    required TResult Function() login,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? regular,
    TResult Function()? login,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? regular,
    TResult Function()? login,
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
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Regular value) regular,
    required TResult Function(_Login value) login,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Regular value)? regular,
    TResult Function(_Login value)? login,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Regular value)? regular,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState() = _$_LoginState;
}

/// @nodoc
abstract class _$$_RegularCopyWith<$Res> {
  factory _$$_RegularCopyWith(
          _$_Regular value, $Res Function(_$_Regular) then) =
      __$$_RegularCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegularCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_RegularCopyWith<$Res> {
  __$$_RegularCopyWithImpl(_$_Regular _value, $Res Function(_$_Regular) _then)
      : super(_value, (v) => _then(v as _$_Regular));

  @override
  _$_Regular get _value => super._value as _$_Regular;
}

/// @nodoc

class _$_Regular implements _Regular {
  const _$_Regular();

  @override
  String toString() {
    return 'LoginState.regular()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Regular);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() regular,
    required TResult Function() login,
  }) {
    return regular();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? regular,
    TResult Function()? login,
  }) {
    return regular?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? regular,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Regular value) regular,
    required TResult Function(_Login value) login,
  }) {
    return regular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Regular value)? regular,
    TResult Function(_Login value)? login,
  }) {
    return regular?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Regular value)? regular,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class _Regular implements LoginState {
  const factory _Regular() = _$_Regular;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, (v) => _then(v as _$_Login));

  @override
  _$_Login get _value => super._value as _$_Login;
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'LoginState.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() regular,
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? regular,
    TResult Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? regular,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_Regular value) regular,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Regular value)? regular,
    TResult Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_Regular value)? regular,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginState {
  const factory _Login() = _$_Login;
}
