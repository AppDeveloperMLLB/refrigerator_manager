import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_factory.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/models.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/notification_register.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/time_of_day.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/ingredient_repo_base.dart';
import 'package:refrigerator_management/refrigerator_management/domain/repos/repository_locator.dart';
import 'package:uuid/uuid.dart';
import '../../application/ingredient_output_data.dart';
import 'add_ingredient_input_data.dart';

class AddIngredientService {
  final IngredientRepoBase _ingredientRepo;

  AddIngredientService()
      : _ingredientRepo = RepositoryLocator.instance.get<IngredientRepoBase>();

  Future<IngredientOutputData> handle(AddIngredientInputData inputData) async {
    final addIngredient = await createIngredient(inputData);
    await _ingredientRepo.add(addIngredient);
    final notificationRegister = NotificationRegister(
      ingredient: addIngredient,
      notificationId: addIngredient.notificationId.value,
      expirationDate: addIngredient.expirationDate,
      notificationTimeOfDay: TimeOfDay(hour: 16, min: 50),
    );
    notificationRegister.register();
    return createOutputData(addIngredient);
  }

  Future<Ingredient> createIngredient(AddIngredientInputData inputData) async {
    final newIngredientId = const Uuid().v4();
    final newNotificationId = await NotificationService().getNotificationId();
    return IngredientFactory.create(
      id: newIngredientId,
      notificationId: newNotificationId,
      category: inputData.category,
      name: inputData.name,
      expirationDate: inputData.expirationDate,
    );
  }

  IngredientOutputData createOutputData(Ingredient ingredient) {
    return IngredientOutputData(
      ingredient.id.id,
      ingredient.notificationId.value,
      ingredient.name.name,
      ingredient.categoryName.name,
      ingredient.expirationDate.value,
    );
  }
}
