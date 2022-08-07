import 'package:refrigerator_management/refrigerator_management/application/fetch_ingredient/fetch_ingredient_output_data_list.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';
import '../../application/ingredient_output_data.dart';
import '../../domain/repos/repository_locator.dart';
import 'fetch_ingredient_input_data.dart';

class FetchIngredientService {
  final IngredientRepoBase _repo;

  FetchIngredientService()
      : _repo = RepositoryLocator.instance.get<IngredientRepoBase>();

  // Future<IngredientOutputData> find(FindIngredientInputData inputData) async {
  //   final ingredient = await _repo.get(IngredientId(id: inputData.id));
  //   final ingredientNone = Ingredient(
  //       id: IngredientId(id: ""),
  //       categoryName: IngredientCategoryName(name: ""),
  //       name: IngredientName(name: ""));
  //   if (ingredient == ingredientNone) {
  //     return IngredientOutputData.none;
  //   }
  //
  //   return IngredientOutputData(ingredient.getId(), ingredient.getName(),
  //       ingredient.getCategory(), ingredient.getExpirationDate());
  // }

  Future<FetchIngredientOutputDataList> fetchAll() async {
    final ingredientList = await _repo.fetchAll();
    return FetchIngredientOutputDataList(
      expiredList: toList(ingredientList.getExpiredList()),
      soonExpiredList: toList(ingredientList.getSoonExpiredList()),
      ingredientListWithSufficientExpirationDate: toList(
          ingredientList.getIngredientListWithSufficientExpirationDate()),
    );
  }

  List<IngredientOutputData> toList(List<Ingredient> ingredientList) {
    return List.generate(
      ingredientList.length,
      (index) =>
          IngredientOutputData.createFromIngredient(ingredientList[index]),
    );
  }
}
