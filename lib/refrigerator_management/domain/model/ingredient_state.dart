import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';

part 'ingredient_state.freezed.dart';

@freezed
class IngredientId with _$IngredientId {
  factory IngredientId({required String id}) = _IngredientId;
}

@freezed
class IngredientName with _$IngredientName {
  factory IngredientName({required String name}) = _IngredientName;
}

@freezed
class Ingredient with _$Ingredient {
  factory Ingredient(
      {required IngredientId id,
      required IngredientCategory category,
      required IngredientName name}) = _Ingredient;
}
