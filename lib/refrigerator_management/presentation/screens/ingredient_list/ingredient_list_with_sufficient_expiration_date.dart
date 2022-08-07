import 'package:flutter/material.dart';
import '../../../application/ingredient_output_data.dart';
import 'ingredient_list_widget.dart';

class IngredientListWithSufficientExpirationDateWidget extends StatelessWidget {
  final List<IngredientOutputData> _ingredientListWithSufficientExpirationDate;
  const IngredientListWithSufficientExpirationDateWidget(
      {Key? key,
      required List<IngredientOutputData>
          ingredientListWithSufficientExpirationDate})
      : _ingredientListWithSufficientExpirationDate =
            ingredientListWithSufficientExpirationDate,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IngredientListWidget(
      ingredientList: _ingredientListWithSufficientExpirationDate,
      title: "期限に余裕のある食材",
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
