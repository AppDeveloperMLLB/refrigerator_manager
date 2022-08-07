import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';

class InMemoryIngredientRepo implements IngredientRepoBase {
  static final InMemoryIngredientRepo instance = InMemoryIngredientRepo._();
  final IngredientList _ingredientList = IngredientList(
    ingredientList: [
      Ingredient(
        id: const IngredientId(id: '1'),
        categoryName:
            IngredientCategoryName(name: IngredientCategory.meat.name),
        name: const IngredientName(name: 'Meat'),
        expirationDate: DateTime(2022, 8, 31),
      ),
      Ingredient(
        id: const IngredientId(id: '2'),
        categoryName:
            IngredientCategoryName(name: IngredientCategory.seafood.name),
        name: const IngredientName(name: 'Seafood'),
        expirationDate: DateTime(2022, 8, 8),
      ),
      Ingredient(
        id: const IngredientId(id: '3'),
        categoryName:
            IngredientCategoryName(name: IngredientCategory.drink.name),
        name: const IngredientName(name: 'Drink'),
        expirationDate: DateTime(2022, 7, 25),
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
