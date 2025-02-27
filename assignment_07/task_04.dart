// Task 4: List of Objects Processing
// Create a  Product  class with:
// ●  name  (String)
// ●  category  (String)
// ●  price  (double)
// Create a  list of products  and filter only  electronics  with a price above 5000.

void main() {
  // Product product1 = Product();

  List<Product> product1 = [
    Product(name: "Laptop", category: "Electronics", price: 75000.00),
    Product(name: "Refrigerator", category: "Appliances", price: 100000),
    Product(name: "Phone", category: "Electronics", price: 6000),
    Product(name: "Microwave", category: "Appliances", price: 20000),
  ];
  for (var product in product1) {
    if (product.category == 'Electronics' && product.price! > 5000) {
      print("Product Name: ${product.name}");
      print("Product Category: ${product.category}");
      print("Product Price: ${product.price}");
      print("---------");
    }
  }
}

class Product {
  String? name;
  String? category;
  double? price;

  Product({this.name, this.category, this.price});
}
