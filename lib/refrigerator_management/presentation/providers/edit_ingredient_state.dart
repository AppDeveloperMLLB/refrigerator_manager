import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_ingredient_state.freezed.dart';

@freezed
abstract class EditIngredientState implements _$EditIngredientState {
  const EditIngredientState._();
  const factory EditIngredientState({
    required String id,
    required int notificationId,
    required String name,
    required String category,
    required DateTime dateTime,
  }) = _EditIngredientState;
}
