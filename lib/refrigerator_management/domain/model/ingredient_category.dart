enum IngredientCategory {
  none,
  sweets,
  drink,
  meat,
  dairyProducts,
  seafood,
  others;

  static const String _displayNameNone = "";
  static const String _displayNameSweets = "スイーツ";
  static const String _displayNameDrink = "飲み物";
  static const String _displayNameMeat = "肉類";
  static const String _displayNameDairyProducts = "乳製品";
  static const String _displayNameSeafood = "魚介類";
  static const String _displayNameOthers = "その他";

  static List<String> getDisplayList() {
    return [
      IngredientCategory.sweets.toDisplayName(),
      IngredientCategory.drink.toDisplayName(),
      IngredientCategory.meat.toDisplayName(),
      IngredientCategory.dairyProducts.toDisplayName(),
      IngredientCategory.seafood.toDisplayName(),
      IngredientCategory.others.toDisplayName(),
    ];
  }

  String toDisplayName() {
    String ret = "";
    switch (this) {
      case IngredientCategory.none:
        ret = _displayNameNone;
        break;
      case IngredientCategory.sweets:
        ret = _displayNameSweets;
        break;
      case IngredientCategory.drink:
        ret = _displayNameDrink;
        break;
      case IngredientCategory.meat:
        ret = _displayNameMeat;
        break;
      case IngredientCategory.dairyProducts:
        ret = _displayNameDairyProducts;
        break;
      case IngredientCategory.seafood:
        ret = _displayNameSeafood;
        break;
      case IngredientCategory.others:
        ret = _displayNameOthers;
        break;
    }
    return ret;
  }

  static String getNameFromDisplayName(String displayName) {
    String ret = "";
    switch (displayName) {
      case _displayNameNone:
        ret = IngredientCategory.none.name;
        break;
      case _displayNameSweets:
        ret = IngredientCategory.sweets.name;
        break;
      case _displayNameDrink:
        ret = IngredientCategory.drink.name;
        break;
      case _displayNameMeat:
        ret = IngredientCategory.meat.name;
        break;
      case _displayNameDairyProducts:
        ret = IngredientCategory.dairyProducts.name;
        break;
      case _displayNameSeafood:
        ret = IngredientCategory.seafood.name;
        break;
      case _displayNameOthers:
        ret = IngredientCategory.others.name;
        break;
    }
    return ret;
  }

  static String getDisplayNameFromName(String name) {
    return IngredientCategory.values.byName(name).toDisplayName();
  }
}
