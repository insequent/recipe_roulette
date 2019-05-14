library recipe;

import 'package:built_collection/built_collection.dart';
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

part "recipe.g.dart";

abstract class Recipe implements Built<Recipe, RecipeBuilder> {
  static Serializer<Recipe> get serializer => _$recipeSerializer;

  String get name;
  BuiltMap<String, Object> get ingredients;
  BuiltList<Map> get steps;

  Recipe._();
  factory Recipe([updates(RecipeBuilder b)]) = _$Recipe;
}