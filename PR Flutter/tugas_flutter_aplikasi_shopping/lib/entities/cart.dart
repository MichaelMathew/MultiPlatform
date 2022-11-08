import 'package:tugas_flutter_aplikasi_shopping/entities/product.dart';

class Cart {
  final Product product;
  final int quantity;

  Cart({
    required this.product,
    required this.quantity
  });
}