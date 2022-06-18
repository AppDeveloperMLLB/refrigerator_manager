//import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refrigerator_management/refrigerator_management/providers/ingredient_list_provider.dart';

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
      return FutureBuilder(
          future: ref.listen(provider, (previous, next) { })
          builder:
              (BuildContext context, AsyncSnapshot<List<Reward>> snapshot) {
            if (snapshot.connectionState != ConnectionState.done) {
              return CircularProgressIndicator();
            }

            // エラー発生時はエラーメッセージを表示
            if (snapshot.hasError) {
              return Text(snapshot.error.toString(),
                  style: Theme.of(context).textTheme.headline2);
            }

            if (!snapshot.hasData || snapshot.data.length == 0) {
              return Text(
                '報酬を追加してください',
                style: Theme.of(context).textTheme.headline2,
              );
            }

            return Column(
              children: <Widget>[
                Expanded(
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int i) {
                          return Dismissible(
                            key: ObjectKey(snapshot.data[i]),
                            child: Slidable(
                              actionPane: SlidableDrawerActionPane(),
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return EditRewardWidget(
                                            snapshot.data[i].id);
                                      }));
                                    },
                                    title: Text(
                                      snapshot.data[i].name,
                                      style:
                                          Theme.of(context).textTheme.headline4,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    leading: Icon(Icons.book),
                                  ),
                                  Divider(height: 0)
                                ],
                              ),
                              secondaryActions: <Widget>[
                                IconSlideAction(
                                  caption: 'Delete',
                                  color: Colors.red,
                                  icon: Icons.delete,
                                  onTap: () {
                                    viewModel.delete(snapshot.data[i].id);
                                  },
                                )
                              ],
                            ),
                          );
                        })),
                Container(padding: EdgeInsets.only(top: 8), child: Text('aaa')
                    // ToDo: implement AdMob().getBanner(),
                    ),
              ],
            );
          });
  }
}
