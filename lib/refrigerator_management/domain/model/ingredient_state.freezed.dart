// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientId _$IngredientIdFromJson(Map<String, dynamic> json) {
  return _IngredientId.fromJson(json);
}

/// @nodoc
mixin _$IngredientId {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientIdCopyWith<IngredientId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientIdCopyWith<$Res> {
  factory $IngredientIdCopyWith(
          IngredientId value, $Res Function(IngredientId) then) =
      _$IngredientIdCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$IngredientIdCopyWithImpl<$Res> implements $IngredientIdCopyWith<$Res> {
  _$IngredientIdCopyWithImpl(this._value, this._then);

  final IngredientId _value;
  // ignore: unused_field
  final $Res Function(IngredientId) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_IngredientIdCopyWith<$Res>
    implements $IngredientIdCopyWith<$Res> {
  factory _$$_IngredientIdCopyWith(
          _$_IngredientId value, $Res Function(_$_IngredientId) then) =
      __$$_IngredientIdCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$_IngredientIdCopyWithImpl<$Res>
    extends _$IngredientIdCopyWithImpl<$Res>
    implements _$$_IngredientIdCopyWith<$Res> {
  __$$_IngredientIdCopyWithImpl(
      _$_IngredientId _value, $Res Function(_$_IngredientId) _then)
      : super(_value, (v) => _then(v as _$_IngredientId));

  @override
  _$_IngredientId get _value => super._value as _$_IngredientId;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_IngredientId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientId implements _IngredientId {
  _$_IngredientId({required this.id});

  factory _$_IngredientId.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientIdFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'IngredientId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientId &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientIdCopyWith<_$_IngredientId> get copyWith =>
      __$$_IngredientIdCopyWithImpl<_$_IngredientId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientIdToJson(this);
  }
}

abstract class _IngredientId implements IngredientId {
  factory _IngredientId({required final String id}) = _$_IngredientId;

  factory _IngredientId.fromJson(Map<String, dynamic> json) =
      _$_IngredientId.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientIdCopyWith<_$_IngredientId> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientName _$IngredientNameFromJson(Map<String, dynamic> json) {
  return _IngredientName.fromJson(json);
}

/// @nodoc
mixin _$IngredientName {
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
class _$_IngredientName implements _IngredientName {
  _$_IngredientName({required this.name});

  factory _$_IngredientName.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientNameFromJson(json);

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

abstract class _IngredientName implements IngredientName {
  factory _IngredientName({required final String name}) = _$_IngredientName;

  factory _IngredientName.fromJson(Map<String, dynamic> json) =
      _$_IngredientName.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientNameCopyWith<_$_IngredientName> get copyWith =>
      throw _privateConstructorUsedError;
}

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  IngredientId get id => throw _privateConstructorUsedError;
  IngredientCategory get category => throw _privateConstructorUsedError;
  IngredientName get name => throw _privateConstructorUsedError;

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
      {IngredientId id, IngredientCategory category, IngredientName name});

  $IngredientIdCopyWith<$Res> get id;
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
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IngredientId,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as IngredientCategory,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IngredientName,
    ));
  }

  @override
  $IngredientIdCopyWith<$Res> get id {
    return $IngredientIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
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
      {IngredientId id, IngredientCategory category, IngredientName name});

  @override
  $IngredientIdCopyWith<$Res> get id;
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
    Object? category = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Ingredient(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IngredientId,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as IngredientCategory,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as IngredientName,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ingredient extends _Ingredient {
  _$_Ingredient({required this.id, required this.category, required this.name})
      : super._();

  factory _$_Ingredient.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientFromJson(json);

  @override
  final IngredientId id;
  @override
  final IngredientCategory category;
  @override
  final IngredientName name;

  @override
  String toString() {
    return 'Ingredient(id: $id, category: $category, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ingredient &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(name));

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
      required final IngredientCategory category,
      required final IngredientName name}) = _$_Ingredient;
  _Ingredient._() : super._();

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$_Ingredient.fromJson;

  @override
  IngredientId get id => throw _privateConstructorUsedError;
  @override
  IngredientCategory get category => throw _privateConstructorUsedError;
  @override
  IngredientName get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientCopyWith<_$_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
