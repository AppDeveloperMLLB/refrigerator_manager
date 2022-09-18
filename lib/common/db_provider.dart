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
        "${IngredientTableInfo.columnNotificationId} INTEGER UNIQUE,"
        "${IngredientTableInfo.columnCategory} TEXT,"
        "${IngredientTableInfo.columnName} TEXT,"
        "${IngredientTableInfo.columnExpirationData} TEXT"
        ")");
  }
}

class IngredientTableInfo {
  static const String tableName = "ingredient";
  static const String columnId = "id";
  static const String columnNotificationId = "notification_id";
  static const String columnCategory = "category";
  static const String columnName = "name";
  static const String columnExpirationData = "expiration_date";
}
