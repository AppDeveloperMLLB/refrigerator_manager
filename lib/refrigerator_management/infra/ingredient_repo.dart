import 'package:refrigerator_management/common/db_provider.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';

class IngredientRepo extends IngredientRepoBase {
  @override
  Future<Ingredient> get(IngredientId id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<Ingredient>> fetchAll() async {
    var database = await DBProvider.db.database;
    final list = await database!
        .rawQuery("SELECT * FROM ${IngredientTableInfo.tableName}");

    // なければ0で作成
    if (list.length == 0) {
      return [];
    }

    return List.generate(list.length, (index) {
      return fromMap(list[index]);
    });
  }

  @override
  Future<void> add(Ingredient ingredient) async {
    var database = await DBProvider.db.database;
    database!.insert(IngredientTableInfo.tableName, toMap(ingredient));
  }

  @override
  Future<void> delete(IngredientId id) async {
    var database = await DBProvider.db.database;
    await database?.delete(
      IngredientTableInfo.tableName,
      where: '${IngredientTableInfo.columnId} = ?',
      whereArgs: [id.id],
    );
  }

  @override
  Future<void> update(Ingredient ingredient) async {
    var database = await DBProvider.db.database;
    await database!.update(IngredientTableInfo.tableName, toMap(ingredient),
        where: '${IngredientTableInfo.columnId} = ?',
        whereArgs: [ingredient.getId()]);
  }

  Ingredient fromMap(Map<String, Object?> map) {
    final id = map[IngredientTableInfo.columnId].toString();
    final ingredientId = IngredientId(id: id);
    final category =
        int.parse(map[IngredientTableInfo.columnCategoryId].toString());
    final ingredientCategory = IngredientCategory.meat;
    final ingredientName =
        IngredientName(name: map[IngredientTableInfo.columnName].toString());
    return Ingredient(
        id: ingredientId, category: ingredientCategory, name: ingredientName);
  }

  Map<String, Object?> toMap(Ingredient ingredient) {
    return {
      IngredientTableInfo.columnId: ingredient.id.id,
      IngredientTableInfo.columnCategoryId: ingredient.category.index,
      IngredientTableInfo.columnName: ingredient.name.name
    };
  }
}
