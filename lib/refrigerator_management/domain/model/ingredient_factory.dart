import 'models.dart';

import 'ingredient.dart';

class IngredientFactory {
  static Ingredient create(
      {required String id,
      required String category,
      required String name,
      required DateTime expirationDate}) {
    final ingredientId = IngredientId(id: id);
    final ingredientCategoryName = IngredientCategoryName(name: category);
    final ingredientName = IngredientName(name: name);
    return Ingredient(
      id: ingredientId,
      categoryName: ingredientCategoryName,
      name: ingredientName,
      expirationDate: expirationDate,
    );
  }
}
