import 'package:refrigerator_management/refrigerator_management/application/update_ingredient/update_ingredient_input_data.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_factory.dart';

import '../../domain/repos/ingredient_repo_base.dart';
import '../../domain/repos/repository_locator.dart';

class UpdateIngredientService {
  final IngredientRepoBase _repo;
  UpdateIngredientService()
      : _repo = RepositoryLocator.instance.get<IngredientRepoBase>();

  Future<void> handle(UpdateIngredientInputData input) async {
    final ingredient = IngredientFactory.create(
        id: input.id,
        category: input.category,
        name: input.name,
        expirationDate: input.expirationDate);
    await _repo.update(ingredient);
  }
}
