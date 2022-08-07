import 'package:flutter/material.dart';
import 'package:refrigerator_management/common/components/expansion_tile_trailing.dart';

class ExpansionTileList extends StatelessWidget {
  static final _expansionTileTrailing = ExpansionTileTrailing();
  final String _title;
  final List<String> _dataList;

  const ExpansionTileList({
    Key? key,
    required String title,
    required List<String> dataList,
  })  : _title = title,
        _dataList = dataList,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      onExpansionChanged: (expanded) =>
          _expansionTileTrailing.startAnimation(expanded),
      title: Text(
        _title,
        // NOTE:styleを指定しないと開閉のアニメーション時にテキストの色が変わる
        style: Theme.of(context).textTheme.headline6,
      ),
      trailing: _expansionTileTrailing,
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _dataList.length,
          itemBuilder: (BuildContext context, int i) {
            return ListTile(
              title: Text(_dataList[i]),
            );
          },
        ),
      ],
    );
  }
}
