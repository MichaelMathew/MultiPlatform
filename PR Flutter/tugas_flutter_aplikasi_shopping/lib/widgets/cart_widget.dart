import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../entities/product.dart';

class CartWidget extends StatelessWidget {
  final Product product;
  final int quantity;
  const CartWidget({super.key, required this.product, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Expanded(child: Text(product.nama)),
        Expanded(
          child: Text(
            NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 2)
                .format(product.harga),
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        Flexible(
          child: Text("$quantity x"),
        ),
        Expanded(
          child: Text(
            NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 2)
                .format(product.harga * quantity),
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
