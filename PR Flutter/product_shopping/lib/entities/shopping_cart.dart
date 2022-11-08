import 'package:product_shopping/entities/product.dart';

class ShoppingCart {
  final Product product;
  final int quantity;

  ShoppingCart({
    required this.product,
    required this.quantity
  });
}