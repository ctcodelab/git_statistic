// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'merge_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MergeRequest {
  AuthorEntity get authorEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MergeRequestCopyWith<MergeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergeRequestCopyWith<$Res> {
  factory $MergeRequestCopyWith(
          MergeRequest value, $Res Function(MergeRequest) then) =
      _$MergeRequestCopyWithImpl<$Res>;
  $Res call({AuthorEntity authorEntity});
}

/// @nodoc
class _$MergeRequestCopyWithImpl<$Res> implements $MergeRequestCopyWith<$Res> {
  _$MergeRequestCopyWithImpl(this._value, this._then);

  final MergeRequest _value;
  // ignore: unused_field
  final $Res Function(MergeRequest) _then;

  @override
  $Res call({
    Object? authorEntity = freezed,
  }) {
    return _then(_value.copyWith(
      authorEntity: authorEntity == freezed
          ? _value.authorEntity
          : authorEntity // ignore: cast_nullable_to_non_nullable
              as AuthorEntity,
    ));
  }
}

/// @nodoc
abstract class _$MergeRequestCopyWith<$Res>
    implements $MergeRequestCopyWith<$Res> {
  factory _$MergeRequestCopyWith(
          _MergeRequest value, $Res Function(_MergeRequest) then) =
      __$MergeRequestCopyWithImpl<$Res>;
  @override
  $Res call({AuthorEntity authorEntity});
}

/// @nodoc
class __$MergeRequestCopyWithImpl<$Res> extends _$MergeRequestCopyWithImpl<$Res>
    implements _$MergeRequestCopyWith<$Res> {
  __$MergeRequestCopyWithImpl(
      _MergeRequest _value, $Res Function(_MergeRequest) _then)
      : super(_value, (v) => _then(v as _MergeRequest));

  @override
  _MergeRequest get _value => super._value as _MergeRequest;

  @override
  $Res call({
    Object? authorEntity = freezed,
  }) {
    return _then(_MergeRequest(
      authorEntity: authorEntity == freezed
          ? _value.authorEntity
          : authorEntity // ignore: cast_nullable_to_non_nullable
              as AuthorEntity,
    ));
  }
}

/// @nodoc

class _$_MergeRequest implements _MergeRequest {
  const _$_MergeRequest({required this.authorEntity});

  @override
  final AuthorEntity authorEntity;

  @override
  String toString() {
    return 'MergeRequest(authorEntity: $authorEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MergeRequest &&
            const DeepCollectionEquality()
                .equals(other.authorEntity, authorEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authorEntity));

  @JsonKey(ignore: true)
  @override
  _$MergeRequestCopyWith<_MergeRequest> get copyWith =>
      __$MergeRequestCopyWithImpl<_MergeRequest>(this, _$identity);
}

abstract class _MergeRequest implements MergeRequest {
  const factory _MergeRequest({required final AuthorEntity authorEntity}) =
      _$_MergeRequest;

  @override
  AuthorEntity get authorEntity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MergeRequestCopyWith<_MergeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
