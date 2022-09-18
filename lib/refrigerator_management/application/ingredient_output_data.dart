import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';

class IngredientOutputData {
  static IngredientOutputData none =
      IngredientOutputData("", 0, "", "", DateTime(1000));
  final String id;
  final int notificationId;
  final String name;
  final String category;
  final DateTime expirationDate;

  const IngredientOutputData(
    this.id,
    this.notificationId,
    this.name,
    this.category,
    this.expirationDate,
  );

  factory IngredientOutputData.createFromIngredient(Ingredient ingredient) {
    return IngredientOutputData(
      ingredient.id.id,
      ingredient.notificationId.value,
      ingredient.name.name,
      ingredient.categoryName.name,
      ingredient.expirationDate.value,
    );
  }

  bool isNewData() {
    return id == "";
  }
}
