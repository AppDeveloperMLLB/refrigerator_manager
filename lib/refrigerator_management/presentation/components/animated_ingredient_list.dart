import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/ingredient_output_data.dart';
import '../providers/ingredient_list_provider.dart';

class AnimatedIngredientList extends ConsumerStatefulWidget {
  const AnimatedIngredientList({Key? key}) : super(key: key);

  @override
  _AnimatedIngredientListState createState() => _AnimatedIngredientListState();
}

class _AnimatedIngredientListState
    extends ConsumerState<AnimatedIngredientList> {
  final _key = GlobalKey<_AnimatedIngredientListState>();
  @override
  Widget build(BuildContext context) {
    return ref.watch(ingredientListProvider).when(
        data: (data) => AnimatedList(
            key: _key,
            initialItemCount: data.length,
            itemBuilder: (context, index, animation) {
              return _buildItem(context, data[index], animation);
            }),
        error: (error, stacktrace) => Text(error.toString()),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }

  Widget _buildItem(BuildContext context, IngredientOutputData outputData,
      Animation<double> animation) {
    return Container();
    //return SlideTransition(position: animation.drive(child));
  }
}
