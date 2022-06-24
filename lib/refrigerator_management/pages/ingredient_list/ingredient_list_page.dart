//import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refrigerator_management/refrigerator_management/providers/ingredient_list_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:refrigerator_management/theme/app_text_theme.dart';

import '../../../theme/app_theme.dart';
import '../../use_case/dto/ingredient_output_data.dart';

class IngredientListPage extends ConsumerStatefulWidget {
  const IngredientListPage({Key? key}) : super(key: key);

  @override
  _IngredientListState createState() => _IngredientListState();
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
    final theme = ref.watch(appThemeProvider);
    // AsyncValueでdata,loading,errorのハンドリングが自動で生える
    return ingredients.when(
      data: (data) => Column(
        children: <Widget>[
          Expanded(child: _buildList(data)),
          Container(padding: EdgeInsets.only(top: 8), child: Text('AdMob')
              // ToDo: implement AdMob().getBanner(),
              ),
        ],
      ),
      loading: () => Center(
        child: CircularProgressIndicator(),
      ),
      error: (_, __) => Center(
        child: Text(_.toString()),
      ),
    );
  }

  Widget _buildList(List<IngredientOutputData> dataList) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int i) {
          return _buildItem(dataList[i]);
        });
  }

  Widget _buildItem(IngredientOutputData data) {
    final theme = ref.watch(appThemeProvider);
    return Dismissible(
      key: ObjectKey(data),
      child: Slidable(
        endActionPane: ActionPane(
          motion: ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (BuildContext context) {
                ref.read(ingredientListProvider.notifier).delete(data.id);
              },
              backgroundColor: theme.appColors.background,
              foregroundColor: theme.appColors.primary,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            ListTile(
              onTap: () {
                GoRouter.of(context).go('/edit_ingredient');
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) {
                //       return EditRewardWidget(
                //           snapshot.data[i].id);
                //     }));
              },
              title: Text(
                data.name,
                style: theme.textTheme.h70.bold(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: Icon(Icons.book),
            ),
            Divider(height: 0)
          ],
        ),
      ),
    );
  }

  void pressed(BuildContext context) {}
}
