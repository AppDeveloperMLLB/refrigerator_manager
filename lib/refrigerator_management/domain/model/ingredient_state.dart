import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';

part 'ingredient_state.freezed.dart';
// JSON用の生成コード
part 'ingredient_state.g.dart';

@freezed
class IngredientId with _$IngredientId {
  factory IngredientId({required String id}) = _IngredientId;
  factory IngredientId.fromJson(Map<String, dynamic> json) =>
      _$IngredientIdFromJson(json);
}

@freezed
class IngredientName with _$IngredientName {
  factory IngredientName({required String name}) = _IngredientName;
  factory IngredientName.fromJson(Map<String, dynamic> json) =>
      _$IngredientNameFromJson(json);
}

@freezed
abstract class Ingredient implements _$Ingredient {
  const Ingredient._();

  factory Ingredient(
      {required IngredientId id,
      required IngredientCategory category,
      required IngredientName name}) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  String getId() {
    return id.id;
  }

  String getName() {
    return name.name;
  }

  String getCategory() {
    return category.toString();
  }
}
