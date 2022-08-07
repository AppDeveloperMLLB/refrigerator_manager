// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_category_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientCategoryName _$IngredientCategoryNameFromJson(
    Map<String, dynamic> json) {
  return _IngredientCategoryName.fromJson(json);
}

/// @nodoc
mixin _$IngredientCategoryName {
// add param like bellow example.
//@JsonKey(name: 'id') required String id,
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCategoryNameCopyWith<IngredientCategoryName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCategoryNameCopyWith<$Res> {
  factory $IngredientCategoryNameCopyWith(IngredientCategoryName value,
          $Res Function(IngredientCategoryName) then) =
      _$IngredientCategoryNameCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$IngredientCategoryNameCopyWithImpl<$Res>
    implements $IngredientCategoryNameCopyWith<$Res> {
  _$IngredientCategoryNameCopyWithImpl(this._value, this._then);

  final IngredientCategoryName _value;
  // ignore: unused_field
  final $Res Function(IngredientCategoryName) _then;

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
abstract class _$$_IngredientCategoryNameCopyWith<$Res>
    implements $IngredientCategoryNameCopyWith<$Res> {
  factory _$$_IngredientCategoryNameCopyWith(_$_IngredientCategoryName value,
          $Res Function(_$_IngredientCategoryName) then) =
      __$$_IngredientCategoryNameCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$_IngredientCategoryNameCopyWithImpl<$Res>
    extends _$IngredientCategoryNameCopyWithImpl<$Res>
    implements _$$_IngredientCategoryNameCopyWith<$Res> {
  __$$_IngredientCategoryNameCopyWithImpl(_$_IngredientCategoryName _value,
      $Res Function(_$_IngredientCategoryName) _then)
      : super(_value, (v) => _then(v as _$_IngredientCategoryName));

  @override
  _$_IngredientCategoryName get _value =>
      super._value as _$_IngredientCategoryName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_IngredientCategoryName(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientCategoryName extends _IngredientCategoryName {
  const _$_IngredientCategoryName({required this.name}) : super._();

  factory _$_IngredientCategoryName.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientCategoryNameFromJson(json);

// add param like bellow example.
//@JsonKey(name: 'id') required String id,
  @override
  final String name;

  @override
  String toString() {
    return 'IngredientCategoryName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientCategoryName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientCategoryNameCopyWith<_$_IngredientCategoryName> get copyWith =>
      __$$_IngredientCategoryNameCopyWithImpl<_$_IngredientCategoryName>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientCategoryNameToJson(this);
  }
}

abstract class _IngredientCategoryName extends IngredientCategoryName {
  const factory _IngredientCategoryName({required final String name}) =
      _$_IngredientCategoryName;
  const _IngredientCategoryName._() : super._();

  factory _IngredientCategoryName.fromJson(Map<String, dynamic> json) =
      _$_IngredientCategoryName.fromJson;

  @override // add param like bellow example.
//@JsonKey(name: 'id') required String id,
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientCategoryNameCopyWith<_$_IngredientCategoryName> get copyWith =>
      throw _privateConstructorUsedError;
}
