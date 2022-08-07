import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';

abstract class IngredientRepoBase {
  Future<Ingredient> get(IngredientId id);
  Future<IngredientList> fetchAll();
  Future<void> add(Ingredient ingredient);
  Future<void> delete(IngredientId id);
  Future<void> update(Ingredient ingredient);
}
