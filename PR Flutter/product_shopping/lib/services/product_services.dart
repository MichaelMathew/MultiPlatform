import '../entities/product.dart';

class ProductServices {
  List<Product> getProducts() {
    return [
      Product(imageUrl: "sepatu.jpg", name: "Sepatu", description: "Sepatu baru dan bagus", price: 500000),
      Product(imageUrl: "baju.jpg", name: "Baju", description: "Baju berkualitas", price: 100000),
      Product(imageUrl: "susu.jpg", name: "Susu", description: "Susu ultramilk full cream 250ml", price: 6000),
      Product(imageUrl: "earphone.jpg", name: "Earphone", description: "Earphone high quality", price: 120000),
    ];
  }
}