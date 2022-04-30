// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discussion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Discussion _$DiscussionFromJson(Map<String, dynamic> json) {
  return _Discussion.fromJson(json);
}

/// @nodoc
mixin _$Discussion {
  String get body => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscussionCopyWith<Discussion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscussionCopyWith<$Res> {
  factory $DiscussionCopyWith(
          Discussion value, $Res Function(Discussion) then) =
      _$DiscussionCopyWithImpl<$Res>;
  $Res call({String body, Author author});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$DiscussionCopyWithImpl<$Res> implements $DiscussionCopyWith<$Res> {
  _$DiscussionCopyWithImpl(this._value, this._then);

  final Discussion _value;
  // ignore: unused_field
  final $Res Function(Discussion) _then;

  @override
  $Res call({
    Object? body = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
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
abstract class _$DiscussionCopyWith<$Res> implements $DiscussionCopyWith<$Res> {
  factory _$DiscussionCopyWith(
          _Discussion value, $Res Function(_Discussion) then) =
      __$DiscussionCopyWithImpl<$Res>;
  @override
  $Res call({String body, Author author});

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$DiscussionCopyWithImpl<$Res> extends _$DiscussionCopyWithImpl<$Res>
    implements _$DiscussionCopyWith<$Res> {
  __$DiscussionCopyWithImpl(
      _Discussion _value, $Res Function(_Discussion) _then)
      : super(_value, (v) => _then(v as _Discussion));

  @override
  _Discussion get _value => super._value as _Discussion;

  @override
  $Res call({
    Object? body = freezed,
    Object? author = freezed,
  }) {
    return _then(_Discussion(
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Discussion implements _Discussion {
  const _$_Discussion({required this.body, required this.author});

  factory _$_Discussion.fromJson(Map<String, dynamic> json) =>
      _$$_DiscussionFromJson(json);

  @override
  final String body;
  @override
  final Author author;

  @override
  String toString() {
    return 'Discussion(body: $body, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Discussion &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.author, author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(author));

  @JsonKey(ignore: true)
  @override
  _$DiscussionCopyWith<_Discussion> get copyWith =>
      __$DiscussionCopyWithImpl<_Discussion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscussionToJson(this);
  }
}

abstract class _Discussion implements Discussion {
  const factory _Discussion(
      {required final String body,
      required final Author author}) = _$_Discussion;

  factory _Discussion.fromJson(Map<String, dynamic> json) =
      _$_Discussion.fromJson;

  @override
  String get body => throw _privateConstructorUsedError;
  @override
  Author get author => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiscussionCopyWith<_Discussion> get copyWith =>
      throw _privateConstructorUsedError;
}
