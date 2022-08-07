import 'dart:math';
import 'package:flutter/material.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/repository_locator.dart';
import 'package:refrigerator_management/refrigerator_management/infra/ingredient_repo.dart';
import 'package:refrigerator_management/refrigerator_management/infra/repos/in_memory_ingredient_repo.dart';
import 'app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // TODO:dart-definesで切り替える
  RepositoryLocator.instance.register(InMemoryIngredientRepo.instance);
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}
