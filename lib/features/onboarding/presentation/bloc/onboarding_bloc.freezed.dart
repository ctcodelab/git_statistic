// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConditions,
    required TResult Function() myProjects,
    required TResult Function(int projectId) projectSelected,
    required TResult Function(MembersEntity members) membersSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConditions value) checkConditions,
    required TResult Function(_MyProjects value) myProjects,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_MembersSelected value) membersSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  final OnboardingEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingEvent) _then;
}

/// @nodoc
abstract class _$$_CheckConditionsCopyWith<$Res> {
  factory _$$_CheckConditionsCopyWith(
          _$_CheckConditions value, $Res Function(_$_CheckConditions) then) =
      __$$_CheckConditionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckConditionsCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
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
    return 'OnboardingEvent.checkConditions()';
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
    required TResult Function() myProjects,
    required TResult Function(int projectId) projectSelected,
    required TResult Function(MembersEntity members) membersSelected,
  }) {
    return checkConditions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
  }) {
    return checkConditions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
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
    required TResult Function(_MyProjects value) myProjects,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_MembersSelected value) membersSelected,
  }) {
    return checkConditions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
  }) {
    return checkConditions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
    required TResult orElse(),
  }) {
    if (checkConditions != null) {
      return checkConditions(this);
    }
    return orElse();
  }
}

abstract class _CheckConditions implements OnboardingEvent {
  const factory _CheckConditions() = _$_CheckConditions;
}

/// @nodoc
abstract class _$$_MyProjectsCopyWith<$Res> {
  factory _$$_MyProjectsCopyWith(
          _$_MyProjects value, $Res Function(_$_MyProjects) then) =
      __$$_MyProjectsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MyProjectsCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_MyProjectsCopyWith<$Res> {
  __$$_MyProjectsCopyWithImpl(
      _$_MyProjects _value, $Res Function(_$_MyProjects) _then)
      : super(_value, (v) => _then(v as _$_MyProjects));

  @override
  _$_MyProjects get _value => super._value as _$_MyProjects;
}

/// @nodoc

class _$_MyProjects implements _MyProjects {
  const _$_MyProjects();

  @override
  String toString() {
    return 'OnboardingEvent.myProjects()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MyProjects);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConditions,
    required TResult Function() myProjects,
    required TResult Function(int projectId) projectSelected,
    required TResult Function(MembersEntity members) membersSelected,
  }) {
    return myProjects();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
  }) {
    return myProjects?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
    required TResult orElse(),
  }) {
    if (myProjects != null) {
      return myProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConditions value) checkConditions,
    required TResult Function(_MyProjects value) myProjects,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_MembersSelected value) membersSelected,
  }) {
    return myProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
  }) {
    return myProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
    required TResult orElse(),
  }) {
    if (myProjects != null) {
      return myProjects(this);
    }
    return orElse();
  }
}

abstract class _MyProjects implements OnboardingEvent {
  const factory _MyProjects() = _$_MyProjects;
}

/// @nodoc
abstract class _$$_ProjectSelectedCopyWith<$Res> {
  factory _$$_ProjectSelectedCopyWith(
          _$_ProjectSelected value, $Res Function(_$_ProjectSelected) then) =
      __$$_ProjectSelectedCopyWithImpl<$Res>;
  $Res call({int projectId});
}

/// @nodoc
class __$$_ProjectSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_ProjectSelectedCopyWith<$Res> {
  __$$_ProjectSelectedCopyWithImpl(
      _$_ProjectSelected _value, $Res Function(_$_ProjectSelected) _then)
      : super(_value, (v) => _then(v as _$_ProjectSelected));

  @override
  _$_ProjectSelected get _value => super._value as _$_ProjectSelected;

  @override
  $Res call({
    Object? projectId = freezed,
  }) {
    return _then(_$_ProjectSelected(
      projectId: projectId == freezed
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProjectSelected implements _ProjectSelected {
  const _$_ProjectSelected({required this.projectId});

  @override
  final int projectId;

  @override
  String toString() {
    return 'OnboardingEvent.projectSelected(projectId: $projectId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectSelected &&
            const DeepCollectionEquality().equals(other.projectId, projectId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(projectId));

  @JsonKey(ignore: true)
  @override
  _$$_ProjectSelectedCopyWith<_$_ProjectSelected> get copyWith =>
      __$$_ProjectSelectedCopyWithImpl<_$_ProjectSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConditions,
    required TResult Function() myProjects,
    required TResult Function(int projectId) projectSelected,
    required TResult Function(MembersEntity members) membersSelected,
  }) {
    return projectSelected(projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
  }) {
    return projectSelected?.call(projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
    required TResult orElse(),
  }) {
    if (projectSelected != null) {
      return projectSelected(projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConditions value) checkConditions,
    required TResult Function(_MyProjects value) myProjects,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_MembersSelected value) membersSelected,
  }) {
    return projectSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
  }) {
    return projectSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
    required TResult orElse(),
  }) {
    if (projectSelected != null) {
      return projectSelected(this);
    }
    return orElse();
  }
}

abstract class _ProjectSelected implements OnboardingEvent {
  const factory _ProjectSelected({required final int projectId}) =
      _$_ProjectSelected;

  int get projectId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ProjectSelectedCopyWith<_$_ProjectSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MembersSelectedCopyWith<$Res> {
  factory _$$_MembersSelectedCopyWith(
          _$_MembersSelected value, $Res Function(_$_MembersSelected) then) =
      __$$_MembersSelectedCopyWithImpl<$Res>;
  $Res call({MembersEntity members});
}

/// @nodoc
class __$$_MembersSelectedCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_MembersSelectedCopyWith<$Res> {
  __$$_MembersSelectedCopyWithImpl(
      _$_MembersSelected _value, $Res Function(_$_MembersSelected) _then)
      : super(_value, (v) => _then(v as _$_MembersSelected));

  @override
  _$_MembersSelected get _value => super._value as _$_MembersSelected;

  @override
  $Res call({
    Object? members = freezed,
  }) {
    return _then(_$_MembersSelected(
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as MembersEntity,
    ));
  }
}

/// @nodoc

class _$_MembersSelected implements _MembersSelected {
  const _$_MembersSelected({required this.members});

  @override
  final MembersEntity members;

  @override
  String toString() {
    return 'OnboardingEvent.membersSelected(members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembersSelected &&
            const DeepCollectionEquality().equals(other.members, members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(members));

  @JsonKey(ignore: true)
  @override
  _$$_MembersSelectedCopyWith<_$_MembersSelected> get copyWith =>
      __$$_MembersSelectedCopyWithImpl<_$_MembersSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkConditions,
    required TResult Function() myProjects,
    required TResult Function(int projectId) projectSelected,
    required TResult Function(MembersEntity members) membersSelected,
  }) {
    return membersSelected(members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
  }) {
    return membersSelected?.call(members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkConditions,
    TResult Function()? myProjects,
    TResult Function(int projectId)? projectSelected,
    TResult Function(MembersEntity members)? membersSelected,
    required TResult orElse(),
  }) {
    if (membersSelected != null) {
      return membersSelected(members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckConditions value) checkConditions,
    required TResult Function(_MyProjects value) myProjects,
    required TResult Function(_ProjectSelected value) projectSelected,
    required TResult Function(_MembersSelected value) membersSelected,
  }) {
    return membersSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
  }) {
    return membersSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckConditions value)? checkConditions,
    TResult Function(_MyProjects value)? myProjects,
    TResult Function(_ProjectSelected value)? projectSelected,
    TResult Function(_MembersSelected value)? membersSelected,
    required TResult orElse(),
  }) {
    if (membersSelected != null) {
      return membersSelected(this);
    }
    return orElse();
  }
}

abstract class _MembersSelected implements OnboardingEvent {
  const factory _MembersSelected({required final MembersEntity members}) =
      _$_MembersSelected;

  MembersEntity get members => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MembersSelectedCopyWith<_$_MembersSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() projectsLoading,
    required TResult Function(List<ProjectEntity> projects) yourProjects,
    required TResult Function() completed,
    required TResult Function() membersLoading,
    required TResult Function(MembersEntity members) members,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OnboardingState value) $default, {
    required TResult Function(_ProjectsLoading value) projectsLoading,
    required TResult Function(_YourProjects value) yourProjects,
    required TResult Function(_Completed value) completed,
    required TResult Function(_MembersLoading value) membersLoading,
    required TResult Function(_Members value) members,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;
}

/// @nodoc
abstract class _$$_OnboardingStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, (v) => _then(v as _$_OnboardingState));

  @override
  _$_OnboardingState get _value => super._value as _$_OnboardingState;
}

/// @nodoc

class _$_OnboardingState implements _OnboardingState {
  const _$_OnboardingState();

  @override
  String toString() {
    return 'OnboardingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnboardingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() projectsLoading,
    required TResult Function(List<ProjectEntity> projects) yourProjects,
    required TResult Function() completed,
    required TResult Function() membersLoading,
    required TResult Function(MembersEntity members) members,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
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
    TResult Function(_OnboardingState value) $default, {
    required TResult Function(_ProjectsLoading value) projectsLoading,
    required TResult Function(_YourProjects value) yourProjects,
    required TResult Function(_Completed value) completed,
    required TResult Function(_MembersLoading value) membersLoading,
    required TResult Function(_Members value) members,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState() = _$_OnboardingState;
}

/// @nodoc
abstract class _$$_ProjectsLoadingCopyWith<$Res> {
  factory _$$_ProjectsLoadingCopyWith(
          _$_ProjectsLoading value, $Res Function(_$_ProjectsLoading) then) =
      __$$_ProjectsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ProjectsLoadingCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_ProjectsLoadingCopyWith<$Res> {
  __$$_ProjectsLoadingCopyWithImpl(
      _$_ProjectsLoading _value, $Res Function(_$_ProjectsLoading) _then)
      : super(_value, (v) => _then(v as _$_ProjectsLoading));

  @override
  _$_ProjectsLoading get _value => super._value as _$_ProjectsLoading;
}

/// @nodoc

class _$_ProjectsLoading implements _ProjectsLoading {
  const _$_ProjectsLoading();

  @override
  String toString() {
    return 'OnboardingState.projectsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ProjectsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() projectsLoading,
    required TResult Function(List<ProjectEntity> projects) yourProjects,
    required TResult Function() completed,
    required TResult Function() membersLoading,
    required TResult Function(MembersEntity members) members,
  }) {
    return projectsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
  }) {
    return projectsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
    required TResult orElse(),
  }) {
    if (projectsLoading != null) {
      return projectsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OnboardingState value) $default, {
    required TResult Function(_ProjectsLoading value) projectsLoading,
    required TResult Function(_YourProjects value) yourProjects,
    required TResult Function(_Completed value) completed,
    required TResult Function(_MembersLoading value) membersLoading,
    required TResult Function(_Members value) members,
  }) {
    return projectsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
  }) {
    return projectsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
    required TResult orElse(),
  }) {
    if (projectsLoading != null) {
      return projectsLoading(this);
    }
    return orElse();
  }
}

abstract class _ProjectsLoading implements OnboardingState {
  const factory _ProjectsLoading() = _$_ProjectsLoading;
}

/// @nodoc
abstract class _$$_YourProjectsCopyWith<$Res> {
  factory _$$_YourProjectsCopyWith(
          _$_YourProjects value, $Res Function(_$_YourProjects) then) =
      __$$_YourProjectsCopyWithImpl<$Res>;
  $Res call({List<ProjectEntity> projects});
}

/// @nodoc
class __$$_YourProjectsCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_YourProjectsCopyWith<$Res> {
  __$$_YourProjectsCopyWithImpl(
      _$_YourProjects _value, $Res Function(_$_YourProjects) _then)
      : super(_value, (v) => _then(v as _$_YourProjects));

  @override
  _$_YourProjects get _value => super._value as _$_YourProjects;

  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_$_YourProjects(
      projects: projects == freezed
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>,
    ));
  }
}

/// @nodoc

class _$_YourProjects implements _YourProjects {
  const _$_YourProjects({required final List<ProjectEntity> projects})
      : _projects = projects;

  final List<ProjectEntity> _projects;
  @override
  List<ProjectEntity> get projects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  @override
  String toString() {
    return 'OnboardingState.yourProjects(projects: $projects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YourProjects &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  _$$_YourProjectsCopyWith<_$_YourProjects> get copyWith =>
      __$$_YourProjectsCopyWithImpl<_$_YourProjects>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() projectsLoading,
    required TResult Function(List<ProjectEntity> projects) yourProjects,
    required TResult Function() completed,
    required TResult Function() membersLoading,
    required TResult Function(MembersEntity members) members,
  }) {
    return yourProjects(projects);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
  }) {
    return yourProjects?.call(projects);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
    required TResult orElse(),
  }) {
    if (yourProjects != null) {
      return yourProjects(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OnboardingState value) $default, {
    required TResult Function(_ProjectsLoading value) projectsLoading,
    required TResult Function(_YourProjects value) yourProjects,
    required TResult Function(_Completed value) completed,
    required TResult Function(_MembersLoading value) membersLoading,
    required TResult Function(_Members value) members,
  }) {
    return yourProjects(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
  }) {
    return yourProjects?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
    required TResult orElse(),
  }) {
    if (yourProjects != null) {
      return yourProjects(this);
    }
    return orElse();
  }
}

abstract class _YourProjects implements OnboardingState {
  const factory _YourProjects({required final List<ProjectEntity> projects}) =
      _$_YourProjects;

  List<ProjectEntity> get projects => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_YourProjectsCopyWith<_$_YourProjects> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, (v) => _then(v as _$_Completed));

  @override
  _$_Completed get _value => super._value as _$_Completed;
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed();

  @override
  String toString() {
    return 'OnboardingState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() projectsLoading,
    required TResult Function(List<ProjectEntity> projects) yourProjects,
    required TResult Function() completed,
    required TResult Function() membersLoading,
    required TResult Function(MembersEntity members) members,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OnboardingState value) $default, {
    required TResult Function(_ProjectsLoading value) projectsLoading,
    required TResult Function(_YourProjects value) yourProjects,
    required TResult Function(_Completed value) completed,
    required TResult Function(_MembersLoading value) membersLoading,
    required TResult Function(_Members value) members,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements OnboardingState {
  const factory _Completed() = _$_Completed;
}

/// @nodoc
abstract class _$$_MembersLoadingCopyWith<$Res> {
  factory _$$_MembersLoadingCopyWith(
          _$_MembersLoading value, $Res Function(_$_MembersLoading) then) =
      __$$_MembersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MembersLoadingCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_MembersLoadingCopyWith<$Res> {
  __$$_MembersLoadingCopyWithImpl(
      _$_MembersLoading _value, $Res Function(_$_MembersLoading) _then)
      : super(_value, (v) => _then(v as _$_MembersLoading));

  @override
  _$_MembersLoading get _value => super._value as _$_MembersLoading;
}

/// @nodoc

class _$_MembersLoading implements _MembersLoading {
  const _$_MembersLoading();

  @override
  String toString() {
    return 'OnboardingState.membersLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MembersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() projectsLoading,
    required TResult Function(List<ProjectEntity> projects) yourProjects,
    required TResult Function() completed,
    required TResult Function() membersLoading,
    required TResult Function(MembersEntity members) members,
  }) {
    return membersLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
  }) {
    return membersLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
    required TResult orElse(),
  }) {
    if (membersLoading != null) {
      return membersLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OnboardingState value) $default, {
    required TResult Function(_ProjectsLoading value) projectsLoading,
    required TResult Function(_YourProjects value) yourProjects,
    required TResult Function(_Completed value) completed,
    required TResult Function(_MembersLoading value) membersLoading,
    required TResult Function(_Members value) members,
  }) {
    return membersLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
  }) {
    return membersLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
    required TResult orElse(),
  }) {
    if (membersLoading != null) {
      return membersLoading(this);
    }
    return orElse();
  }
}

abstract class _MembersLoading implements OnboardingState {
  const factory _MembersLoading() = _$_MembersLoading;
}

/// @nodoc
abstract class _$$_MembersCopyWith<$Res> {
  factory _$$_MembersCopyWith(
          _$_Members value, $Res Function(_$_Members) then) =
      __$$_MembersCopyWithImpl<$Res>;
  $Res call({MembersEntity members});
}

/// @nodoc
class __$$_MembersCopyWithImpl<$Res> extends _$OnboardingStateCopyWithImpl<$Res>
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
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as MembersEntity,
    ));
  }
}

/// @nodoc

class _$_Members implements _Members {
  const _$_Members({required this.members});

  @override
  final MembersEntity members;

  @override
  String toString() {
    return 'OnboardingState.members(members: $members)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Members &&
            const DeepCollectionEquality().equals(other.members, members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(members));

  @JsonKey(ignore: true)
  @override
  _$$_MembersCopyWith<_$_Members> get copyWith =>
      __$$_MembersCopyWithImpl<_$_Members>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() projectsLoading,
    required TResult Function(List<ProjectEntity> projects) yourProjects,
    required TResult Function() completed,
    required TResult Function() membersLoading,
    required TResult Function(MembersEntity members) members,
  }) {
    return members(this.members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
  }) {
    return members?.call(this.members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? projectsLoading,
    TResult Function(List<ProjectEntity> projects)? yourProjects,
    TResult Function()? completed,
    TResult Function()? membersLoading,
    TResult Function(MembersEntity members)? members,
    required TResult orElse(),
  }) {
    if (members != null) {
      return members(this.members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_OnboardingState value) $default, {
    required TResult Function(_ProjectsLoading value) projectsLoading,
    required TResult Function(_YourProjects value) yourProjects,
    required TResult Function(_Completed value) completed,
    required TResult Function(_MembersLoading value) membersLoading,
    required TResult Function(_Members value) members,
  }) {
    return members(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
  }) {
    return members?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_OnboardingState value)? $default, {
    TResult Function(_ProjectsLoading value)? projectsLoading,
    TResult Function(_YourProjects value)? yourProjects,
    TResult Function(_Completed value)? completed,
    TResult Function(_MembersLoading value)? membersLoading,
    TResult Function(_Members value)? members,
    required TResult orElse(),
  }) {
    if (members != null) {
      return members(this);
    }
    return orElse();
  }
}

abstract class _Members implements OnboardingState {
  const factory _Members({required final MembersEntity members}) = _$_Members;

  MembersEntity get members => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MembersCopyWith<_$_Members> get copyWith =>
      throw _privateConstructorUsedError;
}
