import 'package:flutter/material.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/ingredient_list/ingredient_list_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const IngredientListPage();
  }
}
