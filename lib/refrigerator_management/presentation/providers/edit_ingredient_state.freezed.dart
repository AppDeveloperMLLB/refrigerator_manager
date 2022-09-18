// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_ingredient_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditIngredientState {
  String get id => throw _privateConstructorUsedError;
  int get notificationId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditIngredientStateCopyWith<EditIngredientState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditIngredientStateCopyWith<$Res> {
  factory $EditIngredientStateCopyWith(
          EditIngredientState value, $Res Function(EditIngredientState) then) =
      _$EditIngredientStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int notificationId,
      String name,
      String category,
      DateTime dateTime});
}

/// @nodoc
class _$EditIngredientStateCopyWithImpl<$Res>
    implements $EditIngredientStateCopyWith<$Res> {
  _$EditIngredientStateCopyWithImpl(this._value, this._then);

  final EditIngredientState _value;
  // ignore: unused_field
  final $Res Function(EditIngredientState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? notificationId = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_EditIngredientStateCopyWith<$Res>
    implements $EditIngredientStateCopyWith<$Res> {
  factory _$$_EditIngredientStateCopyWith(_$_EditIngredientState value,
          $Res Function(_$_EditIngredientState) then) =
      __$$_EditIngredientStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int notificationId,
      String name,
      String category,
      DateTime dateTime});
}

/// @nodoc
class __$$_EditIngredientStateCopyWithImpl<$Res>
    extends _$EditIngredientStateCopyWithImpl<$Res>
    implements _$$_EditIngredientStateCopyWith<$Res> {
  __$$_EditIngredientStateCopyWithImpl(_$_EditIngredientState _value,
      $Res Function(_$_EditIngredientState) _then)
      : super(_value, (v) => _then(v as _$_EditIngredientState));

  @override
  _$_EditIngredientState get _value => super._value as _$_EditIngredientState;

  @override
  $Res call({
    Object? id = freezed,
    Object? notificationId = freezed,
    Object? name = freezed,
    Object? category = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_$_EditIngredientState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_EditIngredientState extends _EditIngredientState {
  const _$_EditIngredientState(
      {required this.id,
      required this.notificationId,
      required this.name,
      required this.category,
      required this.dateTime})
      : super._();

  @override
  final String id;
  @override
  final int notificationId;
  @override
  final String name;
  @override
  final String category;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'EditIngredientState(id: $id, notificationId: $notificationId, name: $name, category: $category, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditIngredientState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.notificationId, notificationId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(notificationId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$$_EditIngredientStateCopyWith<_$_EditIngredientState> get copyWith =>
      __$$_EditIngredientStateCopyWithImpl<_$_EditIngredientState>(
          this, _$identity);
}

abstract class _EditIngredientState extends EditIngredientState {
  const factory _EditIngredientState(
      {required final String id,
      required final int notificationId,
      required final String name,
      required final String category,
      required final DateTime dateTime}) = _$_EditIngredientState;
  const _EditIngredientState._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get notificationId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get category => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditIngredientStateCopyWith<_$_EditIngredientState> get copyWith =>
      throw _privateConstructorUsedError;
}
