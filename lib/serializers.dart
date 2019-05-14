library serializers;

import 'package:built_value/serializer.dart';
import "package:built_value/standard_json_plugin.dart";
import "package:recipe_roulette/recipe.dart";
part 'serializers.g.dart';

@SerializersFor(const [
  Recipe,
])
final Serializers serializers = _$serializers;
final Serializers standardSerializer =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
