import 'package:product_shopping/entities/shopping_cart.dart';

import '../entities/product.dart';

class ShoppingCartServices {
  List<ShoppingCart> shopCart = [
      ShoppingCart(
          product: Product(
              imageUrl: "sepatu.jpg",
              name: "Sepatu",
              description: "Sepatu baru dan bagus",
              price: 500000),
          quantity: 2),
      
    ];
  List<ShoppingCart> getShoppingCarts() {
    return shopCart;
  }

  void addShoppingCart(ShoppingCart sc) {
    shopCart.add(sc);
  }
}
