import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';
part 'ingredient.freezed.dart';
// JSON用の生成コード
part 'ingredient.g.dart';

@freezed
abstract class Ingredient implements _$Ingredient {
  const Ingredient._();

  factory Ingredient({
    required IngredientId id,
    required IngredientCategoryName categoryName,
    required IngredientName name,
    required DateTime expirationDate,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  String getId() {
    return id.id;
  }

  String getName() {
    return name.name;
  }

  String getCategory() {
    return categoryName.name;
  }

  DateTime getExpirationDate() {
    return expirationDate;
  }
}
