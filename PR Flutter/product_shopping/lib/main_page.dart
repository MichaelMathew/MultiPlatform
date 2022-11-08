import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:product_shopping/entities/product.dart';
import 'package:product_shopping/entities/shopping_cart.dart';
import 'package:product_shopping/services/product_services.dart';
import 'package:product_shopping/services/shopping_cart_services.dart';
import 'package:product_shopping/shopping_cart_page.dart';
import 'package:product_shopping/widgets/product_widget.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final int counter = 1;
  final List<Product> product = ProductServices().getProducts();
  final List<ShoppingCart> shopCart = ShoppingCartServices().getShoppingCarts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Product Shopping"),
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
                            builder: (context) => ShoppingCartPage(),
                          ),
                        );
                      }),
                )
              : IconButton(
                  icon: const Icon(Icons.shopping_cart), onPressed: () {}),
          const SizedBox(width: 5)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: product
              .map((prod) => ProductWidget(
                  imageUrl: prod.imageUrl,
                  name: prod.name,
                  description: prod.description,
                  price: prod.price))
              .toList(),
        ),
      ),
    );
  }
}
