import 'package:refrigerator_management/refrigerator_management/domain/model/expiration_date.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/notification_id.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';

class InMemoryIngredientRepo implements IngredientRepoBase {
  static final InMemoryIngredientRepo instance = InMemoryIngredientRepo._();
  final IngredientList _ingredientList = IngredientList(
    ingredientList: [
      Ingredient(
        id: const IngredientId(id: '1'),
        notificationId: const NotificationId(value: 1),
        categoryName:
            IngredientCategoryName(name: IngredientCategory.meat.name),
        name: const IngredientName(name: 'Meat'),
        expirationDate: ExpirationDate(value: DateTime(2022, 9, 31)),
      ),
      Ingredient(
        id: const IngredientId(id: '2'),
        notificationId: const NotificationId(value: 1),
        categoryName:
            IngredientCategoryName(name: IngredientCategory.seafood.name),
        name: const IngredientName(name: 'Seafood'),
        expirationDate: ExpirationDate(value: DateTime(2022, 9, 3)),
      ),
      Ingredient(
        id: const IngredientId(id: '3'),
        notificationId: const NotificationId(value: 1),
        categoryName:
            IngredientCategoryName(name: IngredientCategory.drink.name),
        name: const IngredientName(name: 'Drink'),
        expirationDate: ExpirationDate(value: DateTime(2022, 7, 25)),
      ),
    ],
    alertDays: IngredientList.alertDays,
  );
  InMemoryIngredientRepo._();

  @override
  Future<void> add(Ingredient ingredient) {
    _ingredientList.add(ingredient);
    return Future(() => null);
  }

  @override
  Future<void> delete(IngredientId id) {
    _ingredientList.delete(id);
    return Future(() => null);
  }

  @override
  Future<IngredientList> fetchAll() {
    return Future(() => _ingredientList);
  }

  @override
  Future<Ingredient> get(IngredientId id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<void> update(Ingredient ingredient) {
    _ingredientList.update(ingredient);
    return Future(() => null);
  }
}
