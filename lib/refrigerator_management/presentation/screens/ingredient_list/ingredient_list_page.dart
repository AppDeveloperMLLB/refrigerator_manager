import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:refrigerator_management/common/components/expansion_tile_list.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/ingredient_list/expired_ingredient_list_widget.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/ingredient_list/ingredient_list_with_sufficient_expiration_date.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/ingredient_list/soon_expired_ingredient_list_widget.dart';
import 'package:refrigerator_management/router.dart';

import '../../../application/ingredient_output_data.dart';
import '../../providers/ingredient_list_provider.dart';
import '../../providers/ingredient_list_state.dart';

class IngredientListPage extends ConsumerStatefulWidget {
  const IngredientListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<IngredientListPage> createState() => _IngredientListState();
}

class _IngredientListState extends ConsumerState<IngredientListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ingredients = ref.watch(ingredientListProvider);
    return ingredients.when(
      data: (data) => Scaffold(
        appBar: AppBar(
          title: const Text("食材リスト"),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              ExpiredIngredientListWidget(
                expiredIngredientList: data.expiredList,
              ),
              const SizedBox(
                height: 8,
              ),
              SoonExpiredIngredientListWidget(
                soonExpiredIngredientList: data.soonExpiredList,
              ),
              const SizedBox(
                height: 8,
              ),
              IngredientListWithSufficientExpirationDateWidget(
                ingredientListWithSufficientExpirationDate:
                    data.ingredientListWithSufficientExpirationDate,
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: const Text('AdMob'),
                // ToDo: implement AdMob().getBanner(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: "addButton",
          child: const Icon(Icons.add),
          onPressed: () {
            GoRouter.of(context).goNamed(AppRoute.addIngredient.name);
          },
        ),
      ),
      loading: () => const Scaffold(
          body: SafeArea(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      )),
      error: (exception, __) => Center(
        child: Text(exception.toString()),
      ),
    );
  }
}
