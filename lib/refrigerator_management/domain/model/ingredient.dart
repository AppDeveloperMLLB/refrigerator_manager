import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/expiration_date.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/notification_id.dart';
import 'models.dart';
part 'ingredient.freezed.dart';

@freezed
abstract class Ingredient implements _$Ingredient {
  const Ingredient._();

  factory Ingredient({
    required IngredientId id,
    required NotificationId notificationId,
    required IngredientCategoryName categoryName,
    required IngredientName name,
    required ExpirationDate expirationDate,
  }) = _Ingredient;

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
    return expirationDate.value;
  }

  DateTime getDateBeforeExpiration(int daysBefore) {
    return expirationDate.getDateBeforeExpiration(daysBefore);
  }
}
