import 'models.dart';

class IngredientList {
  static const int alertDays = 3;
  final List<Ingredient> _ingredientList;
  final int _alertDays;
  IngredientList(
      {required List<Ingredient> ingredientList, required int alertDays})
      : _ingredientList = ingredientList,
        _alertDays = alertDays;

  int get length => _ingredientList.length;

  void add(Ingredient ingredient) {
    _ingredientList.add(ingredient);
  }

  void delete(IngredientId id) {
    _ingredientList.removeWhere((element) => element.id == id);
  }

  void update(Ingredient ingredient) {
    final index =
        _ingredientList.indexWhere((element) => element.id == ingredient.id);
    _ingredientList[index] = ingredient;
  }

  List<Ingredient> getExpiredList() {
    return _ingredientList.where((element) {
      return element.expirationDate.value.isBefore(DateTime.now());
    }).toList();
  }

  List<Ingredient> getSoonExpiredList() {
    return _ingredientList.where((element) {
      final now = DateTime.now();
      if (element.expirationDate.value.isBefore(now)) {
        return false;
      }

      final diff = element.expirationDate.value.difference(now);
      return diff <= Duration(days: _alertDays);
    }).toList();
  }

  List<Ingredient> getIngredientListWithSufficientExpirationDate() {
    return _ingredientList.where((element) {
      final now = DateTime.now();
      if (element.expirationDate.value.isBefore(now)) {
        return false;
      }

      final diff = element.expirationDate.value.difference(now);
      return diff > Duration(days: _alertDays);
    }).toList();
  }

  bool hasSameNotificationId(int notificationId) {
    return _ingredientList
        .any((element) => element.notificationId.value == notificationId);
  }

  static IngredientList getEmpty() {
    return IngredientList(ingredientList: [], alertDays: alertDays);
  }
}
