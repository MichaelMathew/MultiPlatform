import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:tugas_flutter_aplikasi_shopping/bloc/counter_bloc.dart';
import 'package:tugas_flutter_aplikasi_shopping/entities/product.dart';
import 'package:tugas_flutter_aplikasi_shopping/product_screen.dart';


class ProductWidget extends StatelessWidget {
  final String image;
  final String nama;
  final int harga;
  final String deskripsi;
  TextEditingController textController = TextEditingController();

  ProductWidget({super.key, required this.nama, required this.harga, required this.image, required this.deskripsi});

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
                  builder: (context) => ProductScreen(image:image, nama: nama, harga: harga, deskripsi: deskripsi,),
                ),
              );
            },
            child: Text(nama),
          ),
        ),
        Expanded(
          child: Text(
            NumberFormat.currency(locale: 'id', symbol: 'Rp ', decimalDigits: 2)
                .format(harga),
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          child:
              IconButton(onPressed: () {
                context.read<CounterBloc>().add(AddCart(product: Product(image: image, nama: nama, harga: harga, deskripsi: deskripsi)));
              }, icon: const Icon(Icons.add_circle)),
        ),
        Expanded(
          child: TextField(
            controller: textController,
            decoration: const InputDecoration(labelText: "Jumlah"),
          ),
        ),
      ],
    );
  }
}
