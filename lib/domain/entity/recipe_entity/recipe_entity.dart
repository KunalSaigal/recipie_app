import 'package:equatable/equatable.dart';

import 'package:recipe_app/data/data_model/recipe_model.dart';

class RecipeEntity extends Equatable {
  final int id;
  final String title;
  final String summary;
  final String image;
  final int readyInMinutes;
  final String sourceUrl;
  final String instructions;
  final List<ExtendedIngredientEntity> extendedIngredients;
  final bool isFavorite;
  final String country;
  final List<String> directions;

  const RecipeEntity({
    this.isFavorite = true,
    required this.directions,
    required this.country,
    required this.id,
    required this.title,
    required this.summary,
    required this.image,
    required this.readyInMinutes,
    required this.sourceUrl,
    required this.instructions,
    required this.extendedIngredients,
  });

  RecipeEntity copyWith({
    int? id,
    String? title,
    String? summary,
    String? image,
    int? readyInMinutes,
    String? sourceUrl,
    String? instructions,
    List<ExtendedIngredientEntity>? extendedIngredients,
    bool? isFavorite,
    String? country,
    List<String>? directions,
  }) {
    return RecipeEntity(
      id: id ?? this.id,
      directions: directions ?? this.directions,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      image: image ?? this.image,
      readyInMinutes: readyInMinutes ?? this.readyInMinutes,
      extendedIngredients: extendedIngredients ?? this.extendedIngredients,
      instructions: instructions ?? this.instructions,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      isFavorite: isFavorite ?? this.isFavorite,
      country: country ?? this.country,
    );
  }

  RecipeModel toModel() {
    return RecipeModel(
      id: id,
      title: title,
      summary: summary,
      image: image,
      readyInMinutes: readyInMinutes,
      sourceUrl: sourceUrl,
      instructions: instructions,
      extendedIngredients: extendedIngredients,
      isFavorite: isFavorite,
      country: country,
      directions: directions,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        summary,
        image,
        readyInMinutes,
        sourceUrl,
        instructions,
        extendedIngredients,
        isFavorite,
        country,
        directions,
      ];
}

class ExtendedIngredientEntity extends Equatable {
  final double amount;
  final int id;
  final String image;
  final String name;

  const ExtendedIngredientEntity({
    required this.amount,
    required this.id,
    required this.image,
    required this.name,
  });

  ExtendedIngredientModel toModel() {
    return ExtendedIngredientModel(
      amount: amount,
      id: id,
      image: image,
      name: name,
    );
  }

  @override
  List<Object?> get props => [
        amount,
        id,
        image,
        name,
      ];
}
