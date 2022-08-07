import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_category_name.freezed.dart';
part 'ingredient_category_name.g.dart';

@freezed
class IngredientCategoryName with _$IngredientCategoryName {
  const IngredientCategoryName._();
  const factory IngredientCategoryName({
    // add param like bellow example.
    //@JsonKey(name: 'id') required String id,
    required String name,
  }) = _IngredientCategoryName;

  factory IngredientCategoryName.fromJson(Map<String, dynamic> json) =>
      _$IngredientCategoryNameFromJson(json);
}
