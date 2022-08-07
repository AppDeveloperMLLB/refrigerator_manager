import 'package:flutter/material.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/ingredient_list/dissmissible_ingredient_widget.dart';

import '../../../../common/components/expansion_tile_trailing.dart';
import '../../../application/ingredient_output_data.dart';

class IngredientListWidget extends StatelessWidget {
  final List<IngredientOutputData> _ingredientList;
  final String _title;
  final Color _backgroundColor;
  final ExpansionTileTrailing _expansionTileTrailing = ExpansionTileTrailing();
  IngredientListWidget({
    Key? key,
    required List<IngredientOutputData> ingredientList,
    required String title,
    required Color backgroundColor,
  })  : _ingredientList = ingredientList,
        _title = title,
        _backgroundColor = backgroundColor,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: ExpansionTile(
        onExpansionChanged: (expanded) =>
            _expansionTileTrailing.startAnimation(expanded),
        title: Text(
          _title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        trailing: _expansionTileTrailing,
        children: <Widget>[
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _ingredientList.length + 2,
            separatorBuilder: (BuildContext context, int i) {
              return const Divider(height: 0.5);
            },
            itemBuilder: (BuildContext context, int i) {
              if (i == 0 || i == _ingredientList.length + 1) {
                return Container();
              }
              return DismissibleIngredientWidget(
                ingredientData: _ingredientList[i - 1],
                backgroundColor: _backgroundColor,
              );
            },
          ),
        ],
      ),
    );
  }
}
