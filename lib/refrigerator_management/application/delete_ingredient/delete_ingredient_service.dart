import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';

import '../../application/delete_ingredient/delete_ingredient_input_data.dart';

class DeleteIngredientService {
  final IngredientRepoBase _repo;

  DeleteIngredientService(this._repo);

  Future<void> handle(DeleteIngredientInputData inputData) async {
    _repo.delete(IngredientId(id: inputData.id));
  }
}
