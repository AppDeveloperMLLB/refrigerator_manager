import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refrigerator_management/refrigerator_management/application/update_ingredient/update_ingredient_input_data.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/providers/edit_ingredient_state.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/providers/ingredient_list_provider.dart';
import '../../application/add_ingredient/add_ingredient_service.dart';
import '../../application/ingredient_output_data.dart';
import '../../application/add_ingredient/add_ingredient_input_data.dart';
import '../../application/update_ingredient/update_ingredient_service.dart';

class EditIngredientNotifier
    extends StateNotifier<AsyncValue<EditIngredientState>> {
  final AddIngredientService _addIngredientService;
  final UpdateIngredientService _updateIngredientService;
  final IngredientListNotifier _ingredientListNotifier;

  late EditIngredientState _original;

  EditIngredientNotifier(this._ingredientListNotifier)
      : _addIngredientService = AddIngredientService(),
        _updateIngredientService = UpdateIngredientService(),
        super(
          const AsyncValue.loading(),
        );

  void init(IngredientOutputData data) {
    _original = EditIngredientState(
        id: data.id,
        name: data.name,
        category: data.category,
        dateTime: data.expirationDate);
    state = AsyncValue.data(_original);
  }

  Future<void> save({
    required String category,
    required String name,
    required DateTime expirationDate,
    required void Function() onSaved,
  }) {
    if (isNewData()) {
      add(name, category, expirationDate);
      return Future.value();
    }

    update(_original.id, name, category, expirationDate);
    onSaved();
    return Future.value();
  }

  Future<void> add(String name, String category, DateTime dateTime) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final input = AddIngredientInputData(name, category, dateTime);
      final newIngredientData = await _addIngredientService.handle(input);
      _original = EditIngredientState(
          id: newIngredientData.id,
          name: name,
          category: category,
          dateTime: dateTime);
      _ingredientListNotifier.refresh();
      return _original;
    });
  }

  Future<void> update(
      String id, String name, String category, DateTime dateTime) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final input = UpdateIngredientInputData(
          id: id, category: category, name: name, expirationDate: dateTime);
      await _updateIngredientService.handle(input);
      final outputData = IngredientOutputData(id, name, category, dateTime);
      _original = EditIngredientState(
          id: id, name: name, category: category, dateTime: dateTime);
      _ingredientListNotifier.refresh();
      return _original;
    });
  }

  bool isNewData() {
    return _original.id == "";
  }

  bool isChanged(String name, String category, DateTime dateTime) {
    return _original.name != name ||
        _original.category != category ||
        _original.dateTime != dateTime;
  }
}

final editIngredientProvider = StateNotifierProvider.autoDispose<
    EditIngredientNotifier, AsyncValue<EditIngredientState>>((ref) {
  return EditIngredientNotifier(ref.read(ingredientListProvider.notifier));
});
