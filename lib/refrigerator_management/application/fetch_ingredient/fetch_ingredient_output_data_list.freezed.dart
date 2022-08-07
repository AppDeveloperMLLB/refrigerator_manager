// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fetch_ingredient_output_data_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FetchIngredientOutputDataList {
  List<IngredientOutputData> get expiredList =>
      throw _privateConstructorUsedError;
  List<IngredientOutputData> get soonExpiredList =>
      throw _privateConstructorUsedError;
  List<IngredientOutputData> get ingredientListWithSufficientExpirationDate =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FetchIngredientOutputDataListCopyWith<FetchIngredientOutputDataList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchIngredientOutputDataListCopyWith<$Res> {
  factory $FetchIngredientOutputDataListCopyWith(
          FetchIngredientOutputDataList value,
          $Res Function(FetchIngredientOutputDataList) then) =
      _$FetchIngredientOutputDataListCopyWithImpl<$Res>;
  $Res call(
      {List<IngredientOutputData> expiredList,
      List<IngredientOutputData> soonExpiredList,
      List<IngredientOutputData> ingredientListWithSufficientExpirationDate});
}

/// @nodoc
class _$FetchIngredientOutputDataListCopyWithImpl<$Res>
    implements $FetchIngredientOutputDataListCopyWith<$Res> {
  _$FetchIngredientOutputDataListCopyWithImpl(this._value, this._then);

  final FetchIngredientOutputDataList _value;
  // ignore: unused_field
  final $Res Function(FetchIngredientOutputDataList) _then;

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
abstract class _$$_FetchIngredientOutputDataListCopyWith<$Res>
    implements $FetchIngredientOutputDataListCopyWith<$Res> {
  factory _$$_FetchIngredientOutputDataListCopyWith(
          _$_FetchIngredientOutputDataList value,
          $Res Function(_$_FetchIngredientOutputDataList) then) =
      __$$_FetchIngredientOutputDataListCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<IngredientOutputData> expiredList,
      List<IngredientOutputData> soonExpiredList,
      List<IngredientOutputData> ingredientListWithSufficientExpirationDate});
}

/// @nodoc
class __$$_FetchIngredientOutputDataListCopyWithImpl<$Res>
    extends _$FetchIngredientOutputDataListCopyWithImpl<$Res>
    implements _$$_FetchIngredientOutputDataListCopyWith<$Res> {
  __$$_FetchIngredientOutputDataListCopyWithImpl(
      _$_FetchIngredientOutputDataList _value,
      $Res Function(_$_FetchIngredientOutputDataList) _then)
      : super(_value, (v) => _then(v as _$_FetchIngredientOutputDataList));

  @override
  _$_FetchIngredientOutputDataList get _value =>
      super._value as _$_FetchIngredientOutputDataList;

  @override
  $Res call({
    Object? expiredList = freezed,
    Object? soonExpiredList = freezed,
    Object? ingredientListWithSufficientExpirationDate = freezed,
  }) {
    return _then(_$_FetchIngredientOutputDataList(
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

class _$_FetchIngredientOutputDataList extends _FetchIngredientOutputDataList {
  const _$_FetchIngredientOutputDataList(
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
    return 'FetchIngredientOutputDataList(expiredList: $expiredList, soonExpiredList: $soonExpiredList, ingredientListWithSufficientExpirationDate: $ingredientListWithSufficientExpirationDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchIngredientOutputDataList &&
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
  _$$_FetchIngredientOutputDataListCopyWith<_$_FetchIngredientOutputDataList>
      get copyWith => __$$_FetchIngredientOutputDataListCopyWithImpl<
          _$_FetchIngredientOutputDataList>(this, _$identity);
}

abstract class _FetchIngredientOutputDataList
    extends FetchIngredientOutputDataList {
  const factory _FetchIngredientOutputDataList(
          {required final List<IngredientOutputData> expiredList,
          required final List<IngredientOutputData> soonExpiredList,
          required final List<IngredientOutputData>
              ingredientListWithSufficientExpirationDate}) =
      _$_FetchIngredientOutputDataList;
  const _FetchIngredientOutputDataList._() : super._();

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
  _$$_FetchIngredientOutputDataListCopyWith<_$_FetchIngredientOutputDataList>
      get copyWith => throw _privateConstructorUsedError;
}
