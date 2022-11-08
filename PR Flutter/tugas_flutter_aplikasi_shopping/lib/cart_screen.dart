import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas_flutter_aplikasi_shopping/bloc/counter_bloc.dart';
import 'package:tugas_flutter_aplikasi_shopping/entities/cart.dart';
import 'package:tugas_flutter_aplikasi_shopping/services/cart_services.dart';
import 'package:tugas_flutter_aplikasi_shopping/widgets/cart_widget.dart';

import 'entities/product.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final List<Cart> ShopCart =
      CartServices().getCarts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Cart"),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
                return (state is CartRunning) ? Column(children: state.cart
                  .map((cart) => CartWidget(product: Product(image: cart.image, nama : cart.nama, harga : cart.harga, deskripsi: cart.deskripsi), quantity: 5,))
                  .toList()) : const Text("Cart is empty");
              })
            ])));
  }
}
