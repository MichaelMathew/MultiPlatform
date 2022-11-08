import 'package:ambil_data_dari_api/fruit.dart';
import 'package:ambil_data_dari_api/fruit_services.dart';
import 'package:ambil_data_dari_api/fruit.dart';
import 'package:ambil_data_dari_api/user_services.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Fruit? fruit;
  List<Fruit>? fruits;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('title'),
        ),
        body: ListView(
          children: [Center(
            child: Column(
              children: [
                fruit != null
                    ? Column(
                        children: [
                          Text("genus: ${(fruit as Fruit).genus}"),
                          Text("name: ${(fruit as Fruit).name}"),
                          Text("family: ${(fruit as Fruit).family}"),
                          Text("order: ${(fruit as Fruit).order}"),
                          Text("nutrition: ${(fruit as Fruit).nutritions}"),
                        ],
                      )
                    : const Text("-"),
                ElevatedButton(
                    onPressed: () async {
                      fruit = await FruitServices().getFruitData();
                      if (fruit != null) {
                        setState(() {});
                      }

                      // fruit = await UserServices().createUserData(
                      //     firstName: 'Joko',
                      //     lastName: 'Susanto',
                      //     email: 'joko@gmail.com');

                      // if (fruit != null) {
                      //   setState(() {});
                      // }
                    },
                    child: const Text('Ambil Data')),
                ElevatedButton(
                    onPressed: () async {
                      fruits = await FruitServices().getListFruitData();

                      if (fruits != null) {
                        setState(() {});
                      }
                    },
                    child: const Text('Ambil List Data')),
                Column(
                  children: (fruits ?? [])
                      .map((e) => Text(
                            (e).name,
                            style: const TextStyle(fontSize: 20),
                          ))
                      .toList(),
                )
              ],
            ),
          ),
        ]));
  }
}
