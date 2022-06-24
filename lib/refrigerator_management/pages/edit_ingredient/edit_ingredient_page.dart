import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:refrigerator_management/theme/app_theme.dart';
import 'package:refrigerator_management/theme/font_size.dart';

class EditIngredientPage extends ConsumerStatefulWidget {
  const EditIngredientPage({Key? key}) : super(key: key);

  @override
  _EditIngredientPageState createState() => _EditIngredientPageState();
}

class _EditIngredientPageState extends ConsumerState<EditIngredientPage> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    final textTheme = ref.watch(appThemeProvider).textTheme;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: TextButton(
          onPressed: () {
            GoRouter.of(context).go("/");
          },
          child: Text(
            "キャンセル",
            style: textTheme.h50.copyWith(color: Colors.blueAccent),
          ),
        ),
      ),
      body: Column(
        children: [
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          TextField(
            decoration: InputDecoration(hintText: '食材などの名前を入力'),
          ),
          Container(
            height: 16,
          ),
          OutlinedButton(
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Text('保存',
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(fontSize: FontSize.pt24)),
            ),
            onPressed: () {},
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          GoRouter.of(context).go("/");
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    ));
  }
}
