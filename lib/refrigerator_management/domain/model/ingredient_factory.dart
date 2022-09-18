import 'package:refrigerator_management/refrigerator_management/domain/model/expiration_date.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/notification_id.dart';

import 'models.dart';

import 'ingredient.dart';

class IngredientFactory {
  static Ingredient create({
    required String id,
    required int notificationId,
    required String category,
    required String name,
    required DateTime expirationDate,
  }) {
    return Ingredient(
      id: IngredientId(id: id),
      notificationId: NotificationId(value: notificationId),
      categoryName: IngredientCategoryName(name: category),
      name: IngredientName(name: name),
      expirationDate: ExpirationDate(value: expirationDate),
    );
  }
}
