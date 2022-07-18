import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../application/ingredient_output_data.dart';
import '../../providers/ingredient_list_provider.dart';

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
          leading: const Icon(Icons.arrow_back),
          actions: [
            IconButton(
                onPressed: (){
                  // TODO:save
                },
                icon: const Icon(Icons.check))
          ],
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(child: _buildList(data)),
              Container(
                  padding: const EdgeInsets.only(top: 8),
                  child: const Text('AdMob')
                // ToDo: implement AdMob().getBanner(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            GoRouter.of(context).go('/add_ingredient');
          },
        ),
      ),
      loading: () => const Scaffold(
          body:SafeArea(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
      ),
      error: (exception, __) => Center(
        child: Text(exception.toString()),
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
    return Dismissible(
      key: ObjectKey(data),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (BuildContext context) {
                ref.read(ingredientListProvider.notifier).delete(data.id);
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
                GoRouter.of(context).goNamed('/update_ingredient', extra: data);
              },
              title: Text(
                data.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: const Icon(Icons.book),
            ),
            const Divider(height: 0)
          ],
        ),
      ),
    );
  }

  void pressed(BuildContext context) {}
}
