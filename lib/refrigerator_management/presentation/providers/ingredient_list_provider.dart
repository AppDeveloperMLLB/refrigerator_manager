import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refrigerator_management/refrigerator_management/infra/ingredient_repo.dart';

import '../../application/add_ingredient/add_ingredient_service.dart';
import '../../application/delete_ingredient/delete_ingredient_input_data.dart';
import '../../application/delete_ingredient/delete_ingredient_service.dart';
import '../../application/add_ingredient/add_ingredient_input_data.dart';
import '../../application/ingredient_output_data.dart';
import '../../application/fetch_ingredient/fetch_ingredient_service.dart';

class MyException implements Exception {
  String cause;
  MyException(this.cause);
}

class IngredientListNotifier
    extends StateNotifier<AsyncValue<List<IngredientOutputData>>> {
  final AddIngredientService _addIngredientService;
  final FetchIngredientService _fetchIngredientService;
  final DeleteIngredientService _deleteIngredientService;

  IngredientListNotifier(this._addIngredientService,
      this._fetchIngredientService, this._deleteIngredientService)
      : super(const AsyncValue.loading()) {
    _getAll();
  }

  Future<void> _getAll() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchIngredientService.fetchAll());
  }

  Future<void> add(String name, String category) async {
    await AsyncValue.guard(() async {
      final inputData = AddIngredientInputData(name, category);
      final result = await _addIngredientService.handle(inputData);
      state = AsyncValue.data([...state.value!, result]);
    });
  }

  Future<void> delete(String id) async {
    final inputData = DeleteIngredientInputData(id);
    try {
      await _deleteIngredientService.handle(inputData);
    } catch (ex) {
      state = AsyncValue.error(ex);
    }

    state = AsyncValue.data([
      for (final data in state.value!)
        if (data.id != id) data,
    ]);
  }
}

final ingredientListProvider = StateNotifierProvider<IngredientListNotifier,
    AsyncValue<List<IngredientOutputData>>>((ref) {
  final repo = IngredientRepo();
  return IngredientListNotifier(AddIngredientService(repo),
      FetchIngredientService(repo), DeleteIngredientService(repo));
});
