import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';

abstract class IngredientRepoBase {
  Future<Ingredient> get(IngredientId id);
  Future<List<Ingredient>> fetchAll();
  Future<void> add(Ingredient ingredient);
  Future<void> delete(IngredientId id);
  Future<void> update(Ingredient ingredient);
}
