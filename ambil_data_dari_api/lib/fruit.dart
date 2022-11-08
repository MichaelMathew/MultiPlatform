import 'package:ambil_data_dari_api/nutrition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fruit.freezed.dart';
part 'fruit.g.dart';

@freezed
class Fruit with _$Fruit {
  const factory Fruit(
      {required int id,
      required String genus,
      required String name,
      required String family,
      required String order,
      required Nutrition nutritions}) = _Fruit;

  factory Fruit.fromJson(Map<String, dynamic> json) => _$FruitFromJson(json);
}
