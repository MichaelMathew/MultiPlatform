import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key,required this.image,required this.nama,required this.harga,required this.deskripsi});

  final String image;
  final String nama;
  final int harga;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            Image.asset('assets/images/${nama.toLowerCase()}.png'),
            const SizedBox(height: 10),
            Text(nama,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 30)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                      .format(harga),
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 25),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Text(
              '$deskripsi ',
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tambahkan ke keranjang")),
                    const SizedBox(width:20),
                const Expanded(
                  child: TextField(
                    keyboardType: TextInputType.numberWithOptions(),
                    decoration: InputDecoration(labelText: "Jumlah"),
                  ),
                  
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
