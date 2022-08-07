import 'package:freezed_annotation/freezed_annotation.dart';
part 'ingredient_id.freezed.dart';
part 'ingredient_id.g.dart';

@freezed
class IngredientId with _$IngredientId {
  const IngredientId._();
  const factory IngredientId(
      {
      // add param like bellow example.
      //@JsonKey(name: 'id') required String id,
      required String id}) = _IngredientId;

  factory IngredientId.fromJson(Map<String, dynamic> json) =>
      _$IngredientIdFromJson(json);
}
