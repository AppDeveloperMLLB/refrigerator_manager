import 'package:refrigerator_management/common/db_provider.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';

// TODO:ファイル移動
//　TODO:時刻の書き込み読み込みできるか確認
class IngredientRepo extends IngredientRepoBase {
  @override
  Future<Ingredient> get(IngredientId id) async {
    var database = await DBProvider.db.database;
    final list = await database!.rawQuery("SELECT *"
        " FROM ${IngredientTableInfo.tableName}"
        "WHERE ${IngredientTableInfo.columnId} = ${id.id}");

    if (list.isEmpty) {
      throw Exception("not found");
    }

    return _fromMap(list[0]);
  }

  @override
  Future<IngredientList> fetchAll() async {
    var database = await DBProvider.db.database;
    final list = await database!.rawQuery("SELECT *"
        " FROM ${IngredientTableInfo.tableName}");

    // なければ0で作成
    if (list.isEmpty) {
      return IngredientList.getEmpty();
    }

    final ingredientList = List.generate(list.length, (index) {
      return _fromMap(list[index]);
    });

    return IngredientList(
        ingredientList: ingredientList, alertDays: IngredientList.alertDays);
  }

  @override
  Future<void> add(Ingredient ingredient) async {
    var database = await DBProvider.db.database;
    database!.insert(IngredientTableInfo.tableName, _toMap(ingredient));
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
    await database!.update(IngredientTableInfo.tableName, _toMap(ingredient),
        where: '${IngredientTableInfo.columnId} = ?',
        whereArgs: [ingredient.getId()]);
  }

  Ingredient _fromMap(Map<String, Object?> map) {
    // ingredient id
    final id = map[IngredientTableInfo.columnId].toString();
    final ingredientId = IngredientId(id: id);

    // category name
    final category = map[IngredientTableInfo.columnCategory].toString();
    final ingredientCategory = IngredientCategoryName(name: category);

    // ingredient name
    final ingredientName =
        IngredientName(name: map[IngredientTableInfo.columnName].toString());

    final expirationDate =
        DateTime.parse(map[IngredientTableInfo.columnExpirationData].toString())
            .toLocal();

    // create Ingredient instance
    return Ingredient(
      id: ingredientId,
      categoryName: ingredientCategory,
      name: ingredientName,
      expirationDate: expirationDate,
    );
  }

  Map<String, Object?> _toMap(Ingredient ingredient) {
    return {
      IngredientTableInfo.columnId: ingredient.id.id,
      IngredientTableInfo.columnCategory: ingredient.categoryName.name,
      IngredientTableInfo.columnName: ingredient.name.name,
      IngredientTableInfo.columnExpirationData:
          ingredient.expirationDate.toString(),
    };
  }
}
