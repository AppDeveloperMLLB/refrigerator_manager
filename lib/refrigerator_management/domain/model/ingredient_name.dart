import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_name.freezed.dart';
part 'ingredient_name.g.dart';

@freezed
class IngredientName with _$IngredientName {
  const IngredientName._();
  const factory IngredientName({
    // add param like bellow example.
    //@JsonKey(name: 'id') required String id,
    required String name,
  }) = _IngredientName;

  factory IngredientName.fromJson(Map<String, dynamic> json) =>
      _$IngredientNameFromJson(json);
}
