// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IngredientId _$$_IngredientIdFromJson(Map<String, dynamic> json) =>
    _$_IngredientId(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_IngredientIdToJson(_$_IngredientId instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_IngredientName _$$_IngredientNameFromJson(Map<String, dynamic> json) =>
    _$_IngredientName(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_IngredientNameToJson(_$_IngredientName instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      id: IngredientId.fromJson(json['id'] as Map<String, dynamic>),
      category: $enumDecode(_$IngredientCategoryEnumMap, json['category']),
      name: IngredientName.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': _$IngredientCategoryEnumMap[instance.category],
      'name': instance.name,
    };

const _$IngredientCategoryEnumMap = {
  IngredientCategory.none: 'none',
  IngredientCategory.sweets: 'sweets',
  IngredientCategory.drink: 'drink',
  IngredientCategory.meat: 'meat',
  IngredientCategory.dairyProducts: 'dairyProducts',
  IngredientCategory.seafood: 'seafood',
};
