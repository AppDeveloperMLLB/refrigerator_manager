// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ingredient _$$_IngredientFromJson(Map<String, dynamic> json) =>
    _$_Ingredient(
      id: IngredientId.fromJson(json['id'] as Map<String, dynamic>),
      categoryName: IngredientCategoryName.fromJson(
          json['categoryName'] as Map<String, dynamic>),
      name: IngredientName.fromJson(json['name'] as Map<String, dynamic>),
      expirationDate: DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$_IngredientToJson(_$_Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryName': instance.categoryName,
      'name': instance.name,
      'expirationDate': instance.expirationDate.toIso8601String(),
    };
