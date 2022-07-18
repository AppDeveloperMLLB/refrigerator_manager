import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refrigerator_management/refrigerator_management/application/update_ingredient/update_ingredient_input_data.dart';
import 'package:refrigerator_management/refrigerator_management/infra/ingredient_repo.dart';
import '../../application/add_ingredient/add_ingredient_service.dart';
import '../../application/ingredient_output_data.dart';
import '../../application/add_ingredient/add_ingredient_input_data.dart';
import '../../application/update_ingredient/update_ingredient_service.dart';

class EditIngredientNotifier
    extends StateNotifier<AsyncValue<IngredientOutputData>> {
  final AddIngredientService _addIngredientService;
  final UpdateIngredientService _updateIngredientService;
  IngredientOutputData _original;

  EditIngredientNotifier(this._addIngredientService,
      this._updateIngredientService, {IngredientOutputData original = IngredientOutputData.none})
      : _original = original, super(const AsyncValue.loading());

  void init({IngredientOutputData initialData = IngredientOutputData.none}){
    _original = initialData;
  }

  Future<void> save({required String category, required String name}){
    if(isNewData()){
      add(name, category);
      return Future.value();
    }

    update(_original.id, name, category);
    return Future.value();
  }

  Future<void> add(String name, String category) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final input = AddIngredientInputData(name, category);
      final newIngredientData = await _addIngredientService.handle(input);
      _original = newIngredientData;
      return newIngredientData;
    });
  }

  Future<void> update(String id, String name, String category) async{
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final input = UpdateIngredientInputData(id: id, category: category, name: name);
      await _updateIngredientService.handle(input);
      final ret = IngredientOutputData(id, name, category);
      _original = ret;
      return ret;
    });
  }

  bool isNewData(){
    return _original == IngredientOutputData.none;
  }
}

final editIngredientProvider = StateNotifierProvider<EditIngredientNotifier,
    AsyncValue<IngredientOutputData>>((ref) {
  final repo = IngredientRepo();
  return EditIngredientNotifier(AddIngredientService(repo), UpdateIngredientService(repo));
});
