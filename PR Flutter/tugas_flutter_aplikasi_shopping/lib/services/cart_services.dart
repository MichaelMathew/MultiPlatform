import 'package:tugas_flutter_aplikasi_shopping/entities/cart.dart';

import '../entities/product.dart';

class CartServices {
  List<Cart> shopCart = [
      Cart(
          product: Product(
              image: "buku.png",
              nama: "Buku",
              harga: 50000,
              deskripsi: "Buku berkualitas tinggi tahan basah dan robek"),
          quantity: 2),
      
    ];
  List<Cart> getCarts() {
    return shopCart;
  }

  void addCart(Cart sc) {
    shopCart.add(sc);
  }
}
