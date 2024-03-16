class Product {
  final String id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});
}

class ProductRepository {
  Future<Product> fetchProduct() async {
    // ทำการจำลองการเรียกข้อมูล Product จาก API
    await Future.delayed(Duration(seconds: 1));
    return Product(id: '1', name: 'Laptop', price: 1000.0);
  }
}