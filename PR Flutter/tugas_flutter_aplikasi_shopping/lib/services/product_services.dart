import '../entities/product.dart';

class ProductServices {
  List<Product> getProducts() {
    return [
      Product(image: "buku.png", nama: "Buku",harga: 50000, deskripsi: "Buku berkualitas tinggi tahan basah dan robek"),
      Product(image: "laptop.png", nama: "Laptop", harga: 10000000, deskripsi: "Laptop tahan banting dan tahan air"),
      Product(image: "keyboard.png", nama: "Keyboard", harga: 75000, deskripsi: "Keyboard dengan suara ketikan yang enak didengar"),
      Product(image: "printer.png", nama: "Printer", harga: 3000000, deskripsi: "Printer dengan tinta yang tidak mudah habis"),
      Product(image: "mouse.png", nama: "Mouse", harga: 50000, deskripsi: "Mouse yang awet dan berkualitas tinggi"),
      Product(image: "handphone.png", nama: "HandPhone", harga: 2999999, deskripsi: "HandPhone yang awet dan berkualitas tinggi"),
      Product(image: "speaker.png", nama: "Speaker", harga: 500000, deskripsi: "Speaker yang awet dan berkualitas tinggi"),
      Product(image: "pc.png", nama: "PC", harga: 5000000, deskripsi: "PC yang awet dan berkualitas tinggi"),
        


    ];
  }
}