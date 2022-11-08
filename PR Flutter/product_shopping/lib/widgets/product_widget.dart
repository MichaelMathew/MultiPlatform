import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:product_shopping/bloc/counter_bloc.dart';
import 'package:product_shopping/entities/product.dart';
import 'package:product_shopping/product_details_page.dart';


class ProductWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;
  final int price;
  TextEditingController textController = TextEditingController();

  ProductWidget({super.key, required this.name, required this.price, required this.imageUrl, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 15, color: Colors.black),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(imageUrl:imageUrl, name: name, description: description, price: price,),
                ),
              );
            },
            child: Text(name),
          ),
        ),
        Expanded(
          child: Text(
            NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                .format(price),
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child:
              IconButton(onPressed: () {
                context.read<CounterBloc>().add(AddCart(product: Product(imageUrl: imageUrl, name: name, description: description, price: price)));
              }, icon: const Icon(Icons.add_circle)),
        ),
        Expanded(
          child: TextField(
            controller: textController,
            decoration: const InputDecoration(labelText: "Quantity"),
          ),
        ),
      ],
    );
  }
}
