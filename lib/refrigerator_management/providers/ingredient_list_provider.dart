import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_state.dart';
import 'package:uuid/uuid.dart';

final myProvider = Provider((ref) {
  return MyValue();
});

class IngredientList extends StateNotifier<List<MyClass>> {
  IngredientList() : super([]);

  void increment(MyClass myClass) => state.add(myClass);
  MyClass get(int index) => state[index];
}

final counterProvider =
    StateNotifierProvider<IngredientList, List<MyClass>>((ref) {
  return IngredientList();
});

class IngredientListNotifier extends StateNotifier<List<List<MyClass>>> {
  IngredientListNotifier() : super([]);

  void add(String content) {
    var uuid = Uuid();
    var newId = uuid.v4();
    while (state.any((balloon) => balloon.id == newId)) {
      newId = uuid.v4();
    }
    var newBalloon = Balloon(id: newId, content: content);
    state = [...state, newBalloon];
  }

  void removeTodo(String id) {
    state.forEach((element) {
      if (element.id == id) {
        element.deleted = true;
      }
    });
    // state = [
    //   for (final balloon in state)
    //     if (balloon.id != id) balloon,
    // ];
  }

  void allDelete() {
    state.forEach((element) {
      element.clear();
    });
  }
}

// 最後に TodosNotifier のインスタンスを値に持つ StateNotifierProvider を作成し、
// UI 側から Todo リストを操作することを可能にします。
final IngredientListProvider =
    StateNotifierProvider<IngredientListNotifier, List<Balloon>>((ref) {
  return IngredientListNotifier();
});
