// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationId {
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationIdCopyWith<NotificationId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationIdCopyWith<$Res> {
  factory $NotificationIdCopyWith(
          NotificationId value, $Res Function(NotificationId) then) =
      _$NotificationIdCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$NotificationIdCopyWithImpl<$Res>
    implements $NotificationIdCopyWith<$Res> {
  _$NotificationIdCopyWithImpl(this._value, this._then);

  final NotificationId _value;
  // ignore: unused_field
  final $Res Function(NotificationId) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationIdCopyWith<$Res>
    implements $NotificationIdCopyWith<$Res> {
  factory _$$_NotificationIdCopyWith(
          _$_NotificationId value, $Res Function(_$_NotificationId) then) =
      __$$_NotificationIdCopyWithImpl<$Res>;
  @override
  $Res call({int value});
}

/// @nodoc
class __$$_NotificationIdCopyWithImpl<$Res>
    extends _$NotificationIdCopyWithImpl<$Res>
    implements _$$_NotificationIdCopyWith<$Res> {
  __$$_NotificationIdCopyWithImpl(
      _$_NotificationId _value, $Res Function(_$_NotificationId) _then)
      : super(_value, (v) => _then(v as _$_NotificationId));

  @override
  _$_NotificationId get _value => super._value as _$_NotificationId;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_NotificationId(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NotificationId extends _NotificationId {
  const _$_NotificationId({required this.value}) : super._();

  @override
  final int value;

  @override
  String toString() {
    return 'NotificationId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationId &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationIdCopyWith<_$_NotificationId> get copyWith =>
      __$$_NotificationIdCopyWithImpl<_$_NotificationId>(this, _$identity);
}

abstract class _NotificationId extends NotificationId {
  const factory _NotificationId({required final int value}) = _$_NotificationId;
  const _NotificationId._() : super._();

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationIdCopyWith<_$_NotificationId> get copyWith =>
      throw _privateConstructorUsedError;
}
