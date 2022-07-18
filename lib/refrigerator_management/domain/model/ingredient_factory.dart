import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';

import 'ingredient_state.dart';

class IngredientFactory{
  static Ingredient create({
    required String id,
    required String category,
    required String name}){
    final ingredientId = IngredientId(id: id);
    final ingredientCategory = IngredientCategory.values.byName(category);
    final ingredientName = IngredientName(name: name);
    return Ingredient(id: ingredientId, category: ingredientCategory, name: ingredientName);
  }
}