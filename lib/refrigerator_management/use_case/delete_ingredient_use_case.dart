import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';
import 'package:refrigerator_management/refrigerator_management/providers/ingredient_list_provider.dart';
import 'package:refrigerator_management/refrigerator_management/use_case/dto/delete_ingredient_input_data.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';

class DeleteIngredientUseCase {
  final IngredientRepoBase _repo;

  DeleteIngredientUseCase(this._repo);

  Future<void> handle(DeleteIngredientInputData inputData) async {
    _repo.delete(IngredientId(id: inputData.id));
  }
}
