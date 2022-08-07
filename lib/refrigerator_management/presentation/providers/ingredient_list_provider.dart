import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/delete_ingredient/delete_ingredient_input_data.dart';
import '../../application/delete_ingredient/delete_ingredient_service.dart';
import '../../application/ingredient_output_data.dart';
import '../../application/fetch_ingredient/fetch_ingredient_service.dart';
import 'ingredient_list_state.dart';

class IngredientListNotifier
    extends StateNotifier<AsyncValue<IngredientListState>> {
  final FetchIngredientService _fetchIngredientService =
      FetchIngredientService();
  final DeleteIngredientService _deleteIngredientService =
      DeleteIngredientService();

  IngredientListNotifier() : super(const AsyncValue.loading()) {
    refresh();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final ingredientList = await _fetchIngredientService.fetchAll();
      return IngredientListState(
        expiredList: ingredientList.expiredList,
        soonExpiredList: ingredientList.soonExpiredList,
        ingredientListWithSufficientExpirationDate:
            ingredientList.ingredientListWithSufficientExpirationDate,
      );
    });
  }

  Future<void> delete(String id) async {
    state = const AsyncValue.loading();
    final inputData = DeleteIngredientInputData(id);
    try {
      await _deleteIngredientService.handle(inputData);
    } catch (ex) {
      state = AsyncValue.error(ex);
      return;
    }

    refresh();
  }
}

final ingredientListProvider = StateNotifierProvider<IngredientListNotifier,
    AsyncValue<IngredientListState>>((ref) {
  return IngredientListNotifier();
});
