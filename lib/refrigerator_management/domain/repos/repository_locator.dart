import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';

class RepositoryLocator {
  final List<dynamic> _repoList = [];
  static RepositoryLocator? _instance;

  RepositoryLocator._();

  static RepositoryLocator get instance {
    _instance ??= RepositoryLocator._();
    return _instance!;
  }

  // TODO:テスト用にfullRegisterを拡張
  void register(IngredientRepoBase ingredientRepo) {
    _repoList.add(ingredientRepo);
  }

  T get<T>() {
    final repo = _repoList.firstWhere((element) => element is T);
    if (repo == null) {
      throw Exception("no register repo");
    }
    return repo;
  }
}
