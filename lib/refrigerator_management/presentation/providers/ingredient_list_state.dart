import 'package:freezed_annotation/freezed_annotation.dart';
import '../../application/ingredient_output_data.dart';
part 'ingredient_list_state.freezed.dart';

@freezed
abstract class IngredientListState implements _$IngredientListState {
  const IngredientListState._();
  const factory IngredientListState({
    required List<IngredientOutputData> expiredList,
    required List<IngredientOutputData> soonExpiredList,
    required List<IngredientOutputData>
        ingredientListWithSufficientExpirationDate,
  }) = _IngredientListState;
}
