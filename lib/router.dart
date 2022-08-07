import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:refrigerator_management/refrigerator_management/application/ingredient_output_data.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/edit_ingredient/add_ingredient_page.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/edit_ingredient/edit_ingredient_page.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/screens/edit_ingredient/update_ingredient_page.dart';

import 'home_screen.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

enum AppRoute {
  home,
  updateIngredient,
  addIngredient,
}

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // HomeScreen
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: HomeScreen(),
      ),
      routes: [
        GoRoute(
          path: 'add_ingredient',
          name: AppRoute.addIngredient.name,
          pageBuilder: (context, state) => MaterialPage<void>(
            child: AddIngredientPage(),
          ),
        ),
        GoRoute(
            path: 'update_ingredient',
            name: AppRoute.updateIngredient.name,
            pageBuilder: (context, state) {
              //final ingredientOutputData = state.params['']
              return MaterialPage<void>(
                child: UpdateIngredientPage(
                    initialData: state.extra! as IngredientOutputData),
              );
            }),
      ],
    ),
  ],
);
