import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';
import 'package:uuid/uuid.dart';
import '../../application/ingredient_output_data.dart';
import 'add_ingredient_input_data.dart';

class AddIngredientService {
  final IngredientRepoBase _ingredientRepo;

  AddIngredientService(this._ingredientRepo);

  Future<IngredientOutputData> handle(AddIngredientInputData inputData) async {
    final newId = const Uuid().v4();
    final ingredientId = IngredientId(id: newId);
    final name = IngredientName(name: inputData.name);
    final category = IngredientCategory.values.byName(inputData.category);
    final ingredient =
        Ingredient(id: ingredientId, category: category, name: name);
    await _ingredientRepo.add(ingredient);
    return IngredientOutputData(
        ingredientId.id, name.name, category.toString());
  }
}
