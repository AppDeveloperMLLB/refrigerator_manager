class IngredientOutputData {
  static final IngredientOutputData none = IngredientOutputData("", "", "");
  final String id;
  final String name;
  final String category;

  IngredientOutputData(this.id, this.name, this.category);
}
