import 'package:flutter/material.dart';
import 'package:refrigerator_management/refrigerator_management/application/ingredient_output_data.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/edit_ingredient/edit_ingredient_page.dart';

class AddIngredientPage extends EditIngredientPage {
  AddIngredientPage({Key? key})
      : super(key: key, initialData: IngredientOutputData.none);
}
