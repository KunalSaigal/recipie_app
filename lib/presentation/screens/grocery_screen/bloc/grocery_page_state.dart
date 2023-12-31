part of 'grocery_page_bloc.dart';

sealed class GroceryPageState {
  const GroceryPageState();
}

final class GroceryPageInitial extends GroceryPageState {}

final class GroceryPageSuccessState extends GroceryPageState {
  final List<GroceryDataEntity> groceryItemList;

  GroceryPageSuccessState({
    required this.groceryItemList,
  });
}
