import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_flutter_aplikasi_shopping/entities/product.dart';
import 'package:tugas_flutter_aplikasi_shopping/entities/cart.dart';
import 'package:tugas_flutter_aplikasi_shopping/services/product_services.dart';
import 'package:tugas_flutter_aplikasi_shopping/services/cart_services.dart';
import 'package:tugas_flutter_aplikasi_shopping/cart_screen.dart';
import 'package:tugas_flutter_aplikasi_shopping/widgets/product_widget.dart';

import 'bloc/counter_bloc.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final int counter = 1;
  final List<Product> product = ProductServices().getProducts();
  final List<Cart> shopCart = CartServices().getCarts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Shop"),
        actions: [
          shopCart.isNotEmpty
              ? Badge(
                  position: BadgePosition.topEnd(end: 0, top: 0),
                  badgeContent: Text(
                    shopCart.length.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  child: IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartScreen(),
                          ),
                        );
                      }),
                )
              : IconButton(
                  icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          const SizedBox(width: 10)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: product
              .map((produk) => ProductWidget(
                  image: produk.image,
                  nama: produk.nama,
                  harga: produk.harga,
                  deskripsi: produk.deskripsi))
              .toList(),
        ),
      ),
    );
  }
}
