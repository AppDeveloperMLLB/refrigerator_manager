import 'package:freezed_annotation/freezed_annotation.dart';
import '../ingredient_output_data.dart';
part 'fetch_ingredient_output_data_list.freezed.dart';

@freezed
abstract class FetchIngredientOutputDataList
    implements _$FetchIngredientOutputDataList {
  const FetchIngredientOutputDataList._();
  const factory FetchIngredientOutputDataList({
    required List<IngredientOutputData> expiredList,
    required List<IngredientOutputData> soonExpiredList,
    required List<IngredientOutputData>
        ingredientListWithSufficientExpirationDate,
  }) = _FetchIngredientOutputDataList;
}
