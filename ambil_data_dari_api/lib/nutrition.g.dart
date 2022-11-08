// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nutrition _$$_NutritionFromJson(Map<String, dynamic> json) => _$_Nutrition(
      carbohydrates: (json['carbohydrates'] as num).toDouble(),
      protein: (json['protein'] as num).toDouble(),
      fat: (json['fat'] as num).toDouble(),
      calories: (json['calories'] as num).toDouble(),
      sugar: (json['sugar'] as num).toDouble(),
    );

Map<String, dynamic> _$$_NutritionToJson(_$_Nutrition instance) =>
    <String, dynamic>{
      'carbohydrates': instance.carbohydrates,
      'protein': instance.protein,
      'fat': instance.fat,
      'calories': instance.calories,
      'sugar': instance.sugar,
    };
