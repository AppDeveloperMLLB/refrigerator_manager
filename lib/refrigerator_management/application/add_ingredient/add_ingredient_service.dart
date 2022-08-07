import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/repository_locator.dart';
import 'package:uuid/uuid.dart';
import '../../application/ingredient_output_data.dart';
import 'add_ingredient_input_data.dart';

class AddIngredientService {
  final IngredientRepoBase _ingredientRepo;

  AddIngredientService()
      : _ingredientRepo = RepositoryLocator.instance.get<IngredientRepoBase>();

  Future<IngredientOutputData> handle(AddIngredientInputData inputData) async {
    final newId = const Uuid().v4();
    final ingredientId = IngredientId(id: newId);
    final name = IngredientName(name: inputData.name);
    final category = IngredientCategoryName(name: inputData.category);
    final ingredient = Ingredient(
        id: ingredientId,
        categoryName: category,
        name: name,
        expirationDate: inputData.expirationDate);
    await _ingredientRepo.add(ingredient);
    return IngredientOutputData(ingredientId.id, name.name, category.toString(),
        inputData.expirationDate);
  }
}
