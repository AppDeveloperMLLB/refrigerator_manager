// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  IngredientId get id => throw _privateConstructorUsedError;
  IngredientCategoryName get categoryName => throw _privateConstructorUsedError;
  IngredientName get name => throw _privateConstructorUsedError;
  DateTime get expirationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res>;
  $Res call(
      {IngredientId id,
      IngredientCategoryName categoryName,
      IngredientName name,
      DateTime expirationDate});

  $IngredientIdCopyWith<$Res> get id;
  $IngredientCategoryNameCopyWith<$Res> get categoryName;
  $IngredientNameCopyWith<$Res> get name;
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res> implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  final Ingredient _value;
  // ignore: unused_field
  final $Res Function(Ingredient) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? name = freezed,
    Object? expirationDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IngredientId,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as IngredientCategoryName,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IngredientName,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $IngredientIdCopyWith<$Res> get id {
    return $IngredientIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $IngredientCategoryNameCopyWith<$Res> get categoryName {
    return $IngredientCategoryNameCopyWith<$Res>(_value.categoryName, (value) {
      return _then(_value.copyWith(categoryName: value));
    });
  }

  @override
  $IngredientNameCopyWith<$Res> get name {
    return $IngredientNameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc
abstract class _$$_IngredientCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$_IngredientCopyWith(
          _$_Ingredient value, $Res Function(_$_Ingredient) then) =
      __$$_IngredientCopyWithImpl<$Res>;
  @override
  $Res call(
      {IngredientId id,
      IngredientCategoryName categoryName,
      IngredientName name,
      DateTime expirationDate});

  @override
  $IngredientIdCopyWith<$Res> get id;
  @override
  $IngredientCategoryNameCopyWith<$Res> get categoryName;
  @override
  $IngredientNameCopyWith<$Res> get name;
}

/// @nodoc
class __$$_IngredientCopyWithImpl<$Res> extends _$IngredientCopyWithImpl<$Res>
    implements _$$_IngredientCopyWith<$Res> {
  __$$_IngredientCopyWithImpl(
      _$_Ingredient _value, $Res Function(_$_Ingredient) _then)
      : super(_value, (v) => _then(v as _$_Ingredient));

  @override
  _$_Ingredient get _value => super._value as _$_Ingredient;

  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? name = freezed,
    Object? expirationDate = freezed,
  }) {
    return _then(_$_Ingredient(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IngredientId,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as IngredientCategoryName,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IngredientName,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredient extends _Ingredient {
  _$_Ingredient(
      {required this.id,
      required this.categoryName,
      required this.name,
      required this.expirationDate})
      : super._();

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  @override
  final IngredientId id;
  @override
  final IngredientCategoryName categoryName;
  @override
  final IngredientName name;
  @override
  final DateTime expirationDate;

  @override
  String toString() {
    return 'Ingredient(id: $id, categoryName: $categoryName, name: $name, expirationDate: $expirationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ingredient &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.expirationDate, expirationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(categoryName),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(expirationDate));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      __$$_IngredientCopyWithImpl<_$_Ingredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientToJson(this);
  }
}

abstract class _Ingredient extends Ingredient {
  factory _Ingredient(
      {required final IngredientId id,
      required final IngredientCategoryName categoryName,
      required final IngredientName name,
      required final DateTime expirationDate}) = _$_Ingredient;
  _Ingredient._() : super._();

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  IngredientId get id => throw _privateConstructorUsedError;
  @override
  IngredientCategoryName get categoryName => throw _privateConstructorUsedError;
  @override
  IngredientName get name => throw _privateConstructorUsedError;
  @override
  DateTime get expirationDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
