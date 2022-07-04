// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'merge_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MergeRequestEvent {
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MergeRequestEventCopyWith<MergeRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergeRequestEventCopyWith<$Res> {
  factory $MergeRequestEventCopyWith(
          MergeRequestEvent value, $Res Function(MergeRequestEvent) then) =
      _$MergeRequestEventCopyWithImpl<$Res>;
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$MergeRequestEventCopyWithImpl<$Res>
    implements $MergeRequestEventCopyWith<$Res> {
  _$MergeRequestEventCopyWithImpl(this._value, this._then);

  final MergeRequestEvent _value;
  // ignore: unused_field
  final $Res Function(MergeRequestEvent) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_FetchCopyWith<$Res>
    implements $MergeRequestEventCopyWith<$Res> {
  factory _$$_FetchCopyWith(_$_Fetch value, $Res Function(_$_Fetch) then) =
      __$$_FetchCopyWithImpl<$Res>;
  @override
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$_FetchCopyWithImpl<$Res> extends _$MergeRequestEventCopyWithImpl<$Res>
    implements _$$_FetchCopyWith<$Res> {
  __$$_FetchCopyWithImpl(_$_Fetch _value, $Res Function(_$_Fetch) _then)
      : super(_value, (v) => _then(v as _$_Fetch));

  @override
  _$_Fetch get _value => super._value as _$_Fetch;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_$_Fetch(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Fetch implements _Fetch {
  const _$_Fetch({required this.startDate, required this.endDate});

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'MergeRequestEvent.fetch(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetch &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      __$$_FetchCopyWithImpl<_$_Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, DateTime endDate) fetch,
  }) {
    return fetch(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? fetch,
  }) {
    return fetch?.call(startDate, endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, DateTime endDate)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(startDate, endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements MergeRequestEvent {
  const factory _Fetch(
      {required final DateTime startDate,
      required final DateTime endDate}) = _$_Fetch;

  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FetchCopyWith<_$_Fetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MergeRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(MembersEntity members) loading,
    required TResult Function(
            Map<String, List<MergeRequestEntity>> mergeRequests)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MembersEntity members)? loading,
    TResult Function(Map<String, List<MergeRequestEntity>> mergeRequests)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MembersEntity members)? loading,
    TResult Function(Map<String, List<MergeRequestEntity>> mergeRequests)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MergeRequestState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MergeRequestState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MergeRequestState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergeRequestStateCopyWith<$Res> {
  factory $MergeRequestStateCopyWith(
          MergeRequestState value, $Res Function(MergeRequestState) then) =
      _$MergeRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MergeRequestStateCopyWithImpl<$Res>
    implements $MergeRequestStateCopyWith<$Res> {
  _$MergeRequestStateCopyWithImpl(this._value, this._then);

  final MergeRequestState _value;
  // ignore: unused_field
  final $Res Function(MergeRequestState) _then;
}

/// @nodoc
abstract class _$$_MergeRequestStateCopyWith<$Res> {
  factory _$$_MergeRequestStateCopyWith(_$_MergeRequestState value,
          $Res Function(_$_MergeRequestState) then) =
      __$$_MergeRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MergeRequestStateCopyWithImpl<$Res>
    extends _$MergeRequestStateCopyWithImpl<$Res>
    implements _$$_MergeRequestStateCopyWith<$Res> {
  __$$_MergeRequestStateCopyWithImpl(
      _$_MergeRequestState _value, $Res Function(_$_MergeRequestState) _then)
      : super(_value, (v) => _then(v as _$_MergeRequestState));

  @override
  _$_MergeRequestState get _value => super._value as _$_MergeRequestState;
}

/// @nodoc

class _$_MergeRequestState implements _MergeRequestState {
  const _$_MergeRequestState();

  @override
  String toString() {
    return 'MergeRequestState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MergeRequestState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(MembersEntity members) loading,
    required TResult Function(
            Map<String, List<MergeRequestEntity>> mergeRequests)
        loaded,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MembersEntity members)? loading,
    TResult Function(Map<String, List<MergeRequestEntity>> mergeRequests)?
        loaded,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MembersEntity members)? loading,
    TResult Function(Map<String, List<MergeRequestEntity>> mergeRequests)?
        loaded,
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
    TResult Function(_MergeRequestState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MergeRequestState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MergeRequestState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MergeRequestState implements MergeRequestState {
  const factory _MergeRequestState() = _$_MergeRequestState;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  $Res call({MembersEntity members});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MergeRequestStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;

  @override
  $Res call({
    Object? members = freezed,
  }) {
    return _then(_$_Loading(
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as MembersEntity,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.members});

  @override
  final MembersEntity members;

  @override
  String toString() {
    return 'MergeRequestState.loading(members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality().equals(other.members, members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(members));

  @JsonKey(ignore: true)
  @override
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(MembersEntity members) loading,
    required TResult Function(
            Map<String, List<MergeRequestEntity>> mergeRequests)
        loaded,
  }) {
    return loading(members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MembersEntity members)? loading,
    TResult Function(Map<String, List<MergeRequestEntity>> mergeRequests)?
        loaded,
  }) {
    return loading?.call(members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MembersEntity members)? loading,
    TResult Function(Map<String, List<MergeRequestEntity>> mergeRequests)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MergeRequestState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MergeRequestState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MergeRequestState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MergeRequestState {
  const factory _Loading({required final MembersEntity members}) = _$_Loading;

  MembersEntity get members => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  $Res call({Map<String, List<MergeRequestEntity>> mergeRequests});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$MergeRequestStateCopyWithImpl<$Res>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, (v) => _then(v as _$_Loaded));

  @override
  _$_Loaded get _value => super._value as _$_Loaded;

  @override
  $Res call({
    Object? mergeRequests = freezed,
  }) {
    return _then(_$_Loaded(
      mergeRequests: mergeRequests == freezed
          ? _value._mergeRequests
          : mergeRequests // ignore: cast_nullable_to_non_nullable
              as Map<String, List<MergeRequestEntity>>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {required final Map<String, List<MergeRequestEntity>> mergeRequests})
      : _mergeRequests = mergeRequests;

  final Map<String, List<MergeRequestEntity>> _mergeRequests;
  @override
  Map<String, List<MergeRequestEntity>> get mergeRequests {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mergeRequests);
  }

  @override
  String toString() {
    return 'MergeRequestState.loaded(mergeRequests: $mergeRequests)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._mergeRequests, _mergeRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_mergeRequests));

  @JsonKey(ignore: true)
  @override
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(MembersEntity members) loading,
    required TResult Function(
            Map<String, List<MergeRequestEntity>> mergeRequests)
        loaded,
  }) {
    return loaded(mergeRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MembersEntity members)? loading,
    TResult Function(Map<String, List<MergeRequestEntity>> mergeRequests)?
        loaded,
  }) {
    return loaded?.call(mergeRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(MembersEntity members)? loading,
    TResult Function(Map<String, List<MergeRequestEntity>> mergeRequests)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(mergeRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MergeRequestState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_MergeRequestState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MergeRequestState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MergeRequestState {
  const factory _Loaded(
      {required final Map<String, List<MergeRequestEntity>>
          mergeRequests}) = _$_Loaded;

  Map<String, List<MergeRequestEntity>> get mergeRequests =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
