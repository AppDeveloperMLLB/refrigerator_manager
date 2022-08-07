// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_id.dart';

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
// add param like bellow example.
//@JsonKey(name: 'id') required String id,
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
class _$_IngredientId extends _IngredientId {
  const _$_IngredientId({required this.id}) : super._();

  factory _$_IngredientId.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientIdFromJson(json);

// add param like bellow example.
//@JsonKey(name: 'id') required String id,
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

abstract class _IngredientId extends IngredientId {
  const factory _IngredientId({required final String id}) = _$_IngredientId;
  const _IngredientId._() : super._();

  factory _IngredientId.fromJson(Map<String, dynamic> json) =
      _$_IngredientId.fromJson;

  @override // add param like bellow example.
//@JsonKey(name: 'id') required String id,
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientIdCopyWith<_$_IngredientId> get copyWith =>
      throw _privateConstructorUsedError;
}
