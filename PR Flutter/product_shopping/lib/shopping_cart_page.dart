import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_shopping/bloc/counter_bloc.dart';
import 'package:product_shopping/entities/shopping_cart.dart';
import 'package:product_shopping/services/shopping_cart_services.dart';
import 'package:product_shopping/widgets/shopping_cart_widget.dart';

import 'entities/product.dart';

class ShoppingCartPage extends StatelessWidget {
  ShoppingCartPage({super.key});
  final List<ShoppingCart> shoppingCart =
      ShoppingCartServices().getShoppingCarts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Shopping Cart"),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
                return (state is CartRunning) ? Column(children: state.cart
                  .map((cart) => ShoppingCartWidget(product: Product(imageUrl: cart.imageUrl, name : cart.name, description : cart.description, price: cart.price), quantity: 1,))
                  .toList()) : const Text("Cart is empty");
              })
            ])));
  }
}
