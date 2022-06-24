import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refrigerator_management/refrigerator_management/infra/ingredient_repo.dart';
import 'package:refrigerator_management/refrigerator_management/use_case/dto/delete_ingredient_input_data.dart';
import 'package:refrigerator_management/refrigerator_management/use_case/fetch_ingredient_use_case.dart';

import '../use_case/add_ingredient_usecase.dart';
import '../use_case/delete_ingredient_use_case.dart';
import '../use_case/dto/add_ingredient_input_data.dart';
import '../use_case/dto/ingredient_output_data.dart';

class MyException implements Exception {
  String cause;
  MyException(this.cause);
}

class IngredientListNotifier
    extends StateNotifier<AsyncValue<List<IngredientOutputData>>> {
  final AddIngredientUseCase _addIngredientUseCase;
  final FetchIngredientUseCase _fetchIngredientUseCase;
  final DeleteIngredientUseCase _deleteIngredientUseCase;

  IngredientListNotifier(this._addIngredientUseCase,
      this._fetchIngredientUseCase, this._deleteIngredientUseCase)
      : super(const AsyncValue.loading()) {
    _getAll();
  }

  Future<void> _getAll() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchIngredientUseCase.fetchAll());
  }

  Future<void> add(String name, String category) async {
    await AsyncValue.guard(() async {
      final inputData = AddIngredientInputData(name, category);
      final result = await _addIngredientUseCase.handle(inputData);
      state = AsyncValue.data([...state.value!, result]);
    });
  }

  Future<void> delete(String id) async {
    final inputData = DeleteIngredientInputData(id);
    try {
      await _deleteIngredientUseCase.handle(inputData);
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
  return IngredientListNotifier(AddIngredientUseCase(repo),
      FetchIngredientUseCase(repo), DeleteIngredientUseCase(repo));
});
