// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_of_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimeOfDay {
  int get hour => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
}

/// @nodoc

class _$_TimeOfDay extends _TimeOfDay {
  _$_TimeOfDay({required this.hour, required this.min}) : super._();

  @override
  final int hour;
  @override
  final int min;

  @override
  String toString() {
    return 'TimeOfDay._internal(hour: $hour, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeOfDay &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            const DeepCollectionEquality().equals(other.min, min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hour),
      const DeepCollectionEquality().hash(min));
}

abstract class _TimeOfDay extends TimeOfDay {
  factory _TimeOfDay({required final int hour, required final int min}) =
      _$_TimeOfDay;
  _TimeOfDay._() : super._();

  @override
  int get hour => throw _privateConstructorUsedError;
  @override
  int get min => throw _privateConstructorUsedError;
}
