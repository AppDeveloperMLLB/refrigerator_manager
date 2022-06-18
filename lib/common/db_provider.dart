import 'dart:async';
import 'dart:core';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DBProvider {
  final String _dbName = "refrigerator_management.db";

  // privateなコンストラクタ
  DBProvider._();

  static final DBProvider db = DBProvider._();
  static Database? _database;

  final String ingredientCategoryTableName = 'ingredient_category';

  /// Returns database instance.
  ///
  /// Return type is nullable.
  /// But never return null.
  Future<Database?> get database async {
    if (_database != null) return _database;

    // DBがなかったら作る
    _database = await initDB();
    return _database;
  }

  /// Initialize database.
  Future<Database> initDB() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _dbName);
    final database =
        await openDatabase(path, version: 1, onCreate: _createTable);
    return database;
  }

  /// Create tables.
  Future<void> _createTable(Database db, int version) async {
    await db.execute("CREATE TABLE ${IngredientTableInfo.tableName} ("
        "${IngredientTableInfo.columnId} TEXT PRIMARY KEY,"
        "${IngredientTableInfo.columnId} TEXT,"
        "${IngredientTableInfo.columnId} TEXT"
        ")");

    await db.execute("CREATE TABLE ${IngredientCategoryTableInfo.tableName} ("
        "${IngredientCategoryTableInfo.columnId} TEXT PRIMARY KEY,"
        "${IngredientCategoryTableInfo.columnName} TEXT,"
        "FOREIGN KEY(${IngredientCategoryTableInfo.columnId}) "
        "REFERENCES ${IngredientTableInfo.tableName}(${IngredientTableInfo.columnId})"
        ")");
  }
}

class IngredientTableInfo {
  static const String tableName = "ingredient";
  static const String columnId = "id";
  static const String columnCategoryId = "category_id";
  static const String columnName = "name";
}

class IngredientCategoryTableInfo {
  static const String tableName = "ingredient_category";
  static const String columnId = "id";
  static const String columnName = "name";
}
