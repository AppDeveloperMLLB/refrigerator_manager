import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';

class IngredientOutputData {
  static IngredientOutputData none =
      IngredientOutputData("", "", "", DateTime(1000));
  final String id;
  final String name;
  final String category;
  final DateTime expirationDate;

  const IngredientOutputData(
      this.id, this.name, this.category, this.expirationDate);

  factory IngredientOutputData.createFromIngredient(Ingredient ingredient) {
    return IngredientOutputData(ingredient.id.id, ingredient.name.name,
        ingredient.categoryName.name, ingredient.expirationDate);
  }

  bool isNewData() {
    return id == "";
  }
}
