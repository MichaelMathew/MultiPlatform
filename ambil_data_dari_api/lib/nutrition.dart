import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition.freezed.dart';
part 'nutrition.g.dart';

@freezed
class Nutrition with _$Nutrition {
  const factory Nutrition(
      {required double carbohydrates,
      required double protein,
      required double fat,
      required double calories,
      required double sugar}) = _Nutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) => _$NutritionFromJson(json);
}
