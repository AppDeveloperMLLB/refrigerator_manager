import 'package:flutter/material.dart';
import 'package:refrigerator_management/refrigerator_management/pages/ingredient_list/ingredient_list_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: IngredientListPage());
    //     body: SingleChildScrollView(
    //         child: Column(
    //   children: [
    //     ListTile(
    //       title: Text(
    //         "title",
    //         style: Theme.of(context).textTheme.headline4,
    //       ),
    //       subtitle: Text(
    //         "subtitle",
    //         style: Theme.of(context).textTheme.bodyMedium,
    //       ),
    //     ),
    //     ListTile(
    //       title: Text("title"),
    //       subtitle: Text("subtitle"),
    //     ),
    //   ],
    // )));
  }
}
