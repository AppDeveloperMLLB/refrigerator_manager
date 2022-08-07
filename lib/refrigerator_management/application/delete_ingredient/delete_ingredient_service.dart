import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';

import '../../application/delete_ingredient/delete_ingredient_input_data.dart';
import '../../domain/repos/repository_locator.dart';

class DeleteIngredientService {
  final IngredientRepoBase _repo;

  DeleteIngredientService()
      : _repo = RepositoryLocator.instance.get<IngredientRepoBase>();

  Future<void> handle(DeleteIngredientInputData inputData) async {
    _repo.delete(IngredientId(id: inputData.id));
  }
}
