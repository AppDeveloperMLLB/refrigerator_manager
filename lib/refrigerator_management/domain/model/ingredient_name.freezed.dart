// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientName _$IngredientNameFromJson(Map<String, dynamic> json) {
  return _IngredientName.fromJson(json);
}

/// @nodoc
mixin _$IngredientName {
// add param like bellow example.
//@JsonKey(name: 'id') required String id,
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientNameCopyWith<IngredientName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientNameCopyWith<$Res> {
  factory $IngredientNameCopyWith(
          IngredientName value, $Res Function(IngredientName) then) =
      _$IngredientNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$IngredientNameCopyWithImpl<$Res>
    implements $IngredientNameCopyWith<$Res> {
  _$IngredientNameCopyWithImpl(this._value, this._then);

  final IngredientName _value;
  // ignore: unused_field
  final $Res Function(IngredientName) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IngredientNameCopyWith<$Res>
    implements $IngredientNameCopyWith<$Res> {
  factory _$$_IngredientNameCopyWith(
          _$_IngredientName value, $Res Function(_$_IngredientName) then) =
      __$$_IngredientNameCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_IngredientNameCopyWithImpl<$Res>
    extends _$IngredientNameCopyWithImpl<$Res>
    implements _$$_IngredientNameCopyWith<$Res> {
  __$$_IngredientNameCopyWithImpl(
      _$_IngredientName _value, $Res Function(_$_IngredientName) _then)
      : super(_value, (v) => _then(v as _$_IngredientName));

  @override
  _$_IngredientName get _value => super._value as _$_IngredientName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_IngredientName(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientName extends _IngredientName {
  const _$_IngredientName({required this.name}) : super._();

  factory _$_IngredientName.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientNameFromJson(json);

// add param like bellow example.
//@JsonKey(name: 'id') required String id,
  @override
  final String name;

  @override
  String toString() {
    return 'IngredientName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientNameCopyWith<_$_IngredientName> get copyWith =>
      __$$_IngredientNameCopyWithImpl<_$_IngredientName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientNameToJson(this);
  }
}

abstract class _IngredientName extends IngredientName {
  const factory _IngredientName({required final String name}) =
      _$_IngredientName;
  const _IngredientName._() : super._();

  factory _IngredientName.fromJson(Map<String, dynamic> json) =
      _$_IngredientName.fromJson;

  @override // add param like bellow example.
//@JsonKey(name: 'id') required String id,
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientNameCopyWith<_$_IngredientName> get copyWith =>
      throw _privateConstructorUsedError;
}
