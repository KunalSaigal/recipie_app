import 'package:recipe_app/data/data_model/grocery_data_model.dart';

abstract class GroceryDataRepository {
  List<GroceryDataModel> groceryItemList();
}
