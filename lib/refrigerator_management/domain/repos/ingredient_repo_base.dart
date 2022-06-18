import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';

abstract class IngredientRepoBase {
  Ingredient get(IngredientId id);
}
