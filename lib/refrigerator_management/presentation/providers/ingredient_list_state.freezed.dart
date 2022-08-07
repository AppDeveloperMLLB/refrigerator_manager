// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IngredientListState {
  List<IngredientOutputData> get expiredList =>
      throw _privateConstructorUsedError;
  List<IngredientOutputData> get soonExpiredList =>
      throw _privateConstructorUsedError;
  List<IngredientOutputData> get ingredientListWithSufficientExpirationDate =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientListStateCopyWith<IngredientListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientListStateCopyWith<$Res> {
  factory $IngredientListStateCopyWith(
          IngredientListState value, $Res Function(IngredientListState) then) =
      _$IngredientListStateCopyWithImpl<$Res>;
  $Res call(
      {List<IngredientOutputData> expiredList,
      List<IngredientOutputData> soonExpiredList,
      List<IngredientOutputData> ingredientListWithSufficientExpirationDate});
}

/// @nodoc
class _$IngredientListStateCopyWithImpl<$Res>
    implements $IngredientListStateCopyWith<$Res> {
  _$IngredientListStateCopyWithImpl(this._value, this._then);

  final IngredientListState _value;
  // ignore: unused_field
  final $Res Function(IngredientListState) _then;

  @override
  $Res call({
    Object? expiredList = freezed,
    Object? soonExpiredList = freezed,
    Object? ingredientListWithSufficientExpirationDate = freezed,
  }) {
    return _then(_value.copyWith(
      expiredList: expiredList == freezed
          ? _value.expiredList
          : expiredList // ignore: cast_nullable_to_non_nullable
              as List<IngredientOutputData>,
      soonExpiredList: soonExpiredList == freezed
          ? _value.soonExpiredList
          : soonExpiredList // ignore: cast_nullable_to_non_nullable
              as List<IngredientOutputData>,
      ingredientListWithSufficientExpirationDate:
          ingredientListWithSufficientExpirationDate == freezed
              ? _value.ingredientListWithSufficientExpirationDate
              : ingredientListWithSufficientExpirationDate // ignore: cast_nullable_to_non_nullable
                  as List<IngredientOutputData>,
    ));
  }
}

/// @nodoc
abstract class _$$_IngredientListStateCopyWith<$Res>
    implements $IngredientListStateCopyWith<$Res> {
  factory _$$_IngredientListStateCopyWith(_$_IngredientListState value,
          $Res Function(_$_IngredientListState) then) =
      __$$_IngredientListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<IngredientOutputData> expiredList,
      List<IngredientOutputData> soonExpiredList,
      List<IngredientOutputData> ingredientListWithSufficientExpirationDate});
}

/// @nodoc
class __$$_IngredientListStateCopyWithImpl<$Res>
    extends _$IngredientListStateCopyWithImpl<$Res>
    implements _$$_IngredientListStateCopyWith<$Res> {
  __$$_IngredientListStateCopyWithImpl(_$_IngredientListState _value,
      $Res Function(_$_IngredientListState) _then)
      : super(_value, (v) => _then(v as _$_IngredientListState));

  @override
  _$_IngredientListState get _value => super._value as _$_IngredientListState;

  @override
  $Res call({
    Object? expiredList = freezed,
    Object? soonExpiredList = freezed,
    Object? ingredientListWithSufficientExpirationDate = freezed,
  }) {
    return _then(_$_IngredientListState(
      expiredList: expiredList == freezed
          ? _value._expiredList
          : expiredList // ignore: cast_nullable_to_non_nullable
              as List<IngredientOutputData>,
      soonExpiredList: soonExpiredList == freezed
          ? _value._soonExpiredList
          : soonExpiredList // ignore: cast_nullable_to_non_nullable
              as List<IngredientOutputData>,
      ingredientListWithSufficientExpirationDate:
          ingredientListWithSufficientExpirationDate == freezed
              ? _value._ingredientListWithSufficientExpirationDate
              : ingredientListWithSufficientExpirationDate // ignore: cast_nullable_to_non_nullable
                  as List<IngredientOutputData>,
    ));
  }
}

/// @nodoc

class _$_IngredientListState extends _IngredientListState {
  const _$_IngredientListState(
      {required final List<IngredientOutputData> expiredList,
      required final List<IngredientOutputData> soonExpiredList,
      required final List<IngredientOutputData>
          ingredientListWithSufficientExpirationDate})
      : _expiredList = expiredList,
        _soonExpiredList = soonExpiredList,
        _ingredientListWithSufficientExpirationDate =
            ingredientListWithSufficientExpirationDate,
        super._();

  final List<IngredientOutputData> _expiredList;
  @override
  List<IngredientOutputData> get expiredList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expiredList);
  }

  final List<IngredientOutputData> _soonExpiredList;
  @override
  List<IngredientOutputData> get soonExpiredList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_soonExpiredList);
  }

  final List<IngredientOutputData> _ingredientListWithSufficientExpirationDate;
  @override
  List<IngredientOutputData> get ingredientListWithSufficientExpirationDate {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(
        _ingredientListWithSufficientExpirationDate);
  }

  @override
  String toString() {
    return 'IngredientListState(expiredList: $expiredList, soonExpiredList: $soonExpiredList, ingredientListWithSufficientExpirationDate: $ingredientListWithSufficientExpirationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientListState &&
            const DeepCollectionEquality()
                .equals(other._expiredList, _expiredList) &&
            const DeepCollectionEquality()
                .equals(other._soonExpiredList, _soonExpiredList) &&
            const DeepCollectionEquality().equals(
                other._ingredientListWithSufficientExpirationDate,
                _ingredientListWithSufficientExpirationDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_expiredList),
      const DeepCollectionEquality().hash(_soonExpiredList),
      const DeepCollectionEquality()
          .hash(_ingredientListWithSufficientExpirationDate));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientListStateCopyWith<_$_IngredientListState> get copyWith =>
      __$$_IngredientListStateCopyWithImpl<_$_IngredientListState>(
          this, _$identity);
}

abstract class _IngredientListState extends IngredientListState {
  const factory _IngredientListState(
      {required final List<IngredientOutputData> expiredList,
      required final List<IngredientOutputData> soonExpiredList,
      required final List<IngredientOutputData>
          ingredientListWithSufficientExpirationDate}) = _$_IngredientListState;
  const _IngredientListState._() : super._();

  @override
  List<IngredientOutputData> get expiredList =>
      throw _privateConstructorUsedError;
  @override
  List<IngredientOutputData> get soonExpiredList =>
      throw _privateConstructorUsedError;
  @override
  List<IngredientOutputData> get ingredientListWithSufficientExpirationDate =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientListStateCopyWith<_$_IngredientListState> get copyWith =>
      throw _privateConstructorUsedError;
}
