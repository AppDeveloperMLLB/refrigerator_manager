class IngredientOutputData {
  static const IngredientOutputData none = IngredientOutputData("", "", "");
  final String id;
  final String name;
  final String category;

  const IngredientOutputData(this.id, this.name, this.category);
}
