// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Fruit _$$_FruitFromJson(Map<String, dynamic> json) => _$_Fruit(
      id: json['id'] as int,
      genus: json['genus'] as String,
      name: json['name'] as String,
      family: json['family'] as String,
      order: json['order'] as String,
      nutritions:
          Nutrition.fromJson(json['nutritions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FruitToJson(_$_Fruit instance) => <String, dynamic>{
      'id': instance.id,
      'genus': instance.genus,
      'name': instance.name,
      'family': instance.family,
      'order': instance.order,
      'nutritions': instance.nutritions,
    };
