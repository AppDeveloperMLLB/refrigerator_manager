import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';

class IngredientListNotifier extends StateNotifier<List<Ingredient>> {
  IngredientListNotifier() : super([]);

  void add(Ingredient ingredient) => state.add(ingredient);
  Ingredient get(IngredientId id) =>
      state.firstWhere((element) => element.id == id);
}

final ingredientListProvider =
    StateNotifierProvider<IngredientListNotifier, List<Ingredient>>((ref) {
  return IngredientListNotifier();
});
