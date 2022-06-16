import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_state.freezed.dart';

enum Direction { left, top, right, bottom }

@freezed
class IngredientId with _$IngredientId {
  factory IngredientId({String id}) = _IngredientId;
}

@freezed
class IngredientCategory with _$IngredientCategory {
  factory IngredientCategory({String id}) = _IngredientCategory;
}

@freezed
class Ingredient with _$Ingredient {
  factory Ingredient({IngredientId a, int? b}) = _Ingredient;
}
