import 'package:flutter/material.dart';
import '../../../application/ingredient_output_data.dart';
import 'ingredient_list_widget.dart';

class ExpiredIngredientListWidget extends StatelessWidget {
  final List<IngredientOutputData> _expiredIngredientList;
  const ExpiredIngredientListWidget(
      {Key? key, required List<IngredientOutputData> expiredIngredientList})
      : _expiredIngredientList = expiredIngredientList,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IngredientListWidget(
      ingredientList: _expiredIngredientList,
      title: "期限の切れた食材",
      backgroundColor: Colors.red,
    );
  }
}
