// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expiration_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExpirationDate {
  DateTime get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExpirationDateCopyWith<ExpirationDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpirationDateCopyWith<$Res> {
  factory $ExpirationDateCopyWith(
          ExpirationDate value, $Res Function(ExpirationDate) then) =
      _$ExpirationDateCopyWithImpl<$Res>;
  $Res call({DateTime value});
}

/// @nodoc
class _$ExpirationDateCopyWithImpl<$Res>
    implements $ExpirationDateCopyWith<$Res> {
  _$ExpirationDateCopyWithImpl(this._value, this._then);

  final ExpirationDate _value;
  // ignore: unused_field
  final $Res Function(ExpirationDate) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ExpirationDateCopyWith<$Res>
    implements $ExpirationDateCopyWith<$Res> {
  factory _$$_ExpirationDateCopyWith(
          _$_ExpirationDate value, $Res Function(_$_ExpirationDate) then) =
      __$$_ExpirationDateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime value});
}

/// @nodoc
class __$$_ExpirationDateCopyWithImpl<$Res>
    extends _$ExpirationDateCopyWithImpl<$Res>
    implements _$$_ExpirationDateCopyWith<$Res> {
  __$$_ExpirationDateCopyWithImpl(
      _$_ExpirationDate _value, $Res Function(_$_ExpirationDate) _then)
      : super(_value, (v) => _then(v as _$_ExpirationDate));

  @override
  _$_ExpirationDate get _value => super._value as _$_ExpirationDate;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ExpirationDate(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ExpirationDate extends _ExpirationDate {
  _$_ExpirationDate({required this.value}) : super._();

  @override
  final DateTime value;

  @override
  String toString() {
    return 'ExpirationDate._internal(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpirationDate &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ExpirationDateCopyWith<_$_ExpirationDate> get copyWith =>
      __$$_ExpirationDateCopyWithImpl<_$_ExpirationDate>(this, _$identity);
}

abstract class _ExpirationDate extends ExpirationDate {
  factory _ExpirationDate({required final DateTime value}) = _$_ExpirationDate;
  _ExpirationDate._() : super._();

  @override
  DateTime get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ExpirationDateCopyWith<_$_ExpirationDate> get copyWith =>
      throw _privateConstructorUsedError;
}
