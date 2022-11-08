import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ProductPage extends StatelessWidget {
  const ProductPage(
      {super.key,
      required this.name,
      required this.price,
      required this.description,
      required this.imageUrl});

  final String imageUrl;
  final String name;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            Image.asset('assets/images/${name.toLowerCase()}.jpg'),
            const SizedBox(height: 10),
            Text(name,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 25)),
            const SizedBox(height: 20),
            Text(
              '$description \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nibh massa, condimentum in risus in, fermentum semper arcu. Etiam luctus risus vel quam pretium congue.',
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                      .format(price),
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 25),
                )
              ],
            ),
            const SizedBox(height: 20,),
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
                    decoration: InputDecoration(labelText: "Quantity"),
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
