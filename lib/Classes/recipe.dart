import 'package:fresh_food_ecommerce/Classes/product.dart';

const String tableRecipe = 'recipes';

class RecipeFields{
  static const String id = '_id';
  static const String recipeName = 'recipeName';
  static const String recipeInstruction = 'recipeInstruction';
  static const String recipeIngredients = 'recipeIngredients';

  List<String> values = [
    id,
    recipeName,
    recipeInstruction,
    recipeIngredients,
  ];
}

class Recipe{
  final int id;
  final String recipeName;
  final String recipeInstruction;
  final String recipeIngredients;
  // final List<Product> products;

  Recipe({
    required this.id,
    required this.recipeName,
    required this.recipeInstruction,
    required this.recipeIngredients
 });

  Recipe copy({
    int? id,
    String? recipeName,
    String? recipeInstruction,
    String? recipeIngredients
 }) => Recipe(
    id: id ?? this.id,
    recipeName: recipeName ?? this.recipeName,
    recipeInstruction: recipeInstruction ?? this.recipeInstruction,
    recipeIngredients: recipeIngredients ?? this.recipeIngredients
 );

  Recipe fromJson(Map<String, Object?> json) => Recipe(
      id: json[RecipeFields.id] as int,
      recipeName: json[RecipeFields.recipeName] as String,
      recipeInstruction: json[RecipeFields.recipeInstruction] as String,
      recipeIngredients: json[RecipeFields.recipeIngredients] as String
  );

  Map<String, Object?> toJson() => {
    RecipeFields.id : id,
    RecipeFields.recipeName : recipeName,
    RecipeFields.recipeInstruction : recipeInstruction,
    RecipeFields.recipeIngredients : recipeIngredients
  };

}