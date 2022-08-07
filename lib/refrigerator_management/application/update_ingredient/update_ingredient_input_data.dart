class UpdateIngredientInputData {
  final String id;
  final String category;
  final String name;
  final DateTime expirationDate;

  UpdateIngredientInputData(
      {required this.id,
      required this.category,
      required this.name,
      required this.expirationDate});
}
