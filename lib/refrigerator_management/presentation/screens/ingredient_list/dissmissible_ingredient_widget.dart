import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:refrigerator_management/refrigerator_management/application/ingredient_output_data.dart';
import 'package:refrigerator_management/router.dart';

import '../../providers/ingredient_list_provider.dart';

class DismissibleIngredientWidget extends ConsumerWidget {
  final IngredientOutputData ingredientData;
  final Color backgroundColor;
  const DismissibleIngredientWidget(
      {Key? key, required this.ingredientData, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: backgroundColor,
      child: Dismissible(
        key: ObjectKey(ingredientData),
        child: Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (BuildContext context) {
                  ref
                      .read(ingredientListProvider.notifier)
                      .delete(ingredientData.id);
                },
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                onTap: () {
                  GoRouter.of(context).goNamed(AppRoute.updateIngredient.name,
                      extra: ingredientData);
                },
                title: Text(
                  ingredientData.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  ingredientData.expirationDate.toLocal().toString(),
                ),
                // TODO:change Icon by category
                leading: const Icon(Icons.book),
              ),
              const Divider(height: 0)
            ],
          ),
        ),
      ),
    );
  }
}
