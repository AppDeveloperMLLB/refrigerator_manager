import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';
import '../../application/ingredient_output_data.dart';
import 'fetch_ingredient_input_data.dart';

class FetchIngredientService {
  final IngredientRepoBase _repo;

  FetchIngredientService(this._repo);

  Future<IngredientOutputData> find(FindIngredientInputData inputData) async {
    final ingredient = await _repo.get(IngredientId(id: inputData.id));
    final ingredientNone = Ingredient(
        id: IngredientId(id: ""),
        category: IngredientCategory.none,
        name: IngredientName(name: ""));
    if (ingredient == ingredientNone) {
      return IngredientOutputData.none;
    }

    return IngredientOutputData(
        ingredient.getId(), ingredient.getName(), ingredient.getCategory());
  }

  Future<List<IngredientOutputData>> fetchAll() async {
    final ingredientList = await _repo.fetchAll();

    return List.generate(ingredientList.length, (index) {
      final ingredient = ingredientList[index];
      return IngredientOutputData(
          ingredient.getId(), ingredient.getName(), ingredient.getCategory());
    });
  }
}
