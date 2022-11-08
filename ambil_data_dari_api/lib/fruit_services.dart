import 'dart:convert';
import 'dart:developer';

import 'package:ambil_data_dari_api/fruit.dart';
import 'package:dio/dio.dart';

class FruitServices {
Future<Fruit?> getFruitData() async {
    Dio dio = Dio();

    try {
      var result = await dio.get('https://www.fruityvice.com/api/fruit/banana');

      log(result.data);

      Fruit fruit = Fruit.fromJson(jsonDecode(result.data));

      return fruit;
      
    } on DioError catch (e) {
      log(e.response.toString());
      return null;
    }
  }
  Future<List<Fruit>?> getListFruitData() async {
    Dio dio = Dio();

    try {
      var result =
          await dio.get('https://www.fruityvice.com/api/fruit/all');

      log(result.data);

      List<Fruit> fruits =
          (jsonDecode(result.data) as List).map((e) => Fruit.fromJson(e)).toList();

      return fruits;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}