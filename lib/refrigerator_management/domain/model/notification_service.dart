import 'dart:math';

import 'package:refrigerator_management/local_notification/local_notification.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/notification_register.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/repository_locator.dart';

class NotificationService {
  final _ingredientRepository =
      RepositoryLocator.instance.get<IngredientRepoBase>();

  Future<int> getNotificationId() async {
    final ingredientList = await _ingredientRepository.fetchAll();
    if (ingredientList.length == 0) {
      return 0;
    }

    for (int newId = 0; newId < 10000000; newId++) {
      if (ingredientList.hasSameNotificationId(newId)) {
        continue;
      }

      return newId;
    }

    throw Exception("can not create new notification id");
  }
}
