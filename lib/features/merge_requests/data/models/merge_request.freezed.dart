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

MergeRequest _$MergeRequestFromJson(Map<String, dynamic> json) {
  return _MergeRequest.fromJson(json);
}

/// @nodoc
mixin _$MergeRequest {
  @JsonKey(name: 'author')
  Author get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'draft')
  bool get draft => throw _privateConstructorUsedError;
  int get iid => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MergeRequestCopyWith<MergeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MergeRequestCopyWith<$Res> {
  factory $MergeRequestCopyWith(
          MergeRequest value, $Res Function(MergeRequest) then) =
      _$MergeRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'author') Author author,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'draft') bool draft,
      int iid,
      String state,
      String description});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$MergeRequestCopyWithImpl<$Res> implements $MergeRequestCopyWith<$Res> {
  _$MergeRequestCopyWithImpl(this._value, this._then);

  final MergeRequest _value;
  // ignore: unused_field
  final $Res Function(MergeRequest) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? draft = freezed,
    Object? iid = freezed,
    Object? state = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      draft: draft == freezed
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool,
      iid: iid == freezed
          ? _value.iid
          : iid // ignore: cast_nullable_to_non_nullable
              as int,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$MergeRequestCopyWith<$Res>
    implements $MergeRequestCopyWith<$Res> {
  factory _$MergeRequestCopyWith(
          _MergeRequest value, $Res Function(_MergeRequest) then) =
      __$MergeRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'author') Author author,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'draft') bool draft,
      int iid,
      String state,
      String description});

  @override
  $AuthorCopyWith<$Res> get author;
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
    Object? author = freezed,
    Object? createdAt = freezed,
    Object? draft = freezed,
    Object? iid = freezed,
    Object? state = freezed,
    Object? description = freezed,
  }) {
    return _then(_MergeRequest(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      draft: draft == freezed
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool,
      iid: iid == freezed
          ? _value.iid
          : iid // ignore: cast_nullable_to_non_nullable
              as int,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MergeRequest implements _MergeRequest {
  const _$_MergeRequest(
      {@JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'draft') required this.draft,
      required this.iid,
      required this.state,
      required this.description});

  factory _$_MergeRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MergeRequestFromJson(json);

  @override
  @JsonKey(name: 'author')
  final Author author;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'draft')
  final bool draft;
  @override
  final int iid;
  @override
  final String state;
  @override
  final String description;

  @override
  String toString() {
    return 'MergeRequest(author: $author, createdAt: $createdAt, draft: $draft, iid: $iid, state: $state, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MergeRequest &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.draft, draft) &&
            const DeepCollectionEquality().equals(other.iid, iid) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(draft),
      const DeepCollectionEquality().hash(iid),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$MergeRequestCopyWith<_MergeRequest> get copyWith =>
      __$MergeRequestCopyWithImpl<_MergeRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MergeRequestToJson(this);
  }
}

abstract class _MergeRequest implements MergeRequest {
  const factory _MergeRequest(
      {@JsonKey(name: 'author') required final Author author,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'draft') required final bool draft,
      required final int iid,
      required final String state,
      required final String description}) = _$_MergeRequest;

  factory _MergeRequest.fromJson(Map<String, dynamic> json) =
      _$_MergeRequest.fromJson;

  @override
  @JsonKey(name: 'author')
  Author get author => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'draft')
  bool get draft => throw _privateConstructorUsedError;
  @override
  int get iid => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MergeRequestCopyWith<_MergeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
