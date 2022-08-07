import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../application/ingredient_output_data.dart';
import 'ingredient_list_widget.dart';

class SoonExpiredIngredientListWidget extends ConsumerWidget {
  final List<IngredientOutputData> soonExpiredIngredientList;
  const SoonExpiredIngredientListWidget(
      {Key? key, required this.soonExpiredIngredientList})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IngredientListWidget(
      ingredientList: soonExpiredIngredientList,
      title: "期限切れ間近の食材",
      backgroundColor: Colors.red.shade300,
    );
  }
}
