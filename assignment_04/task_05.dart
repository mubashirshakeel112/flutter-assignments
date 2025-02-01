// Task 5: Nested List of Maps
// Process a nested list of maps representing products in categories:
// var categories = [
// {
// "category": "Electronics",
// "products": [
// {"name": "Laptop", "price": 70000},
// {"name": "Phone", "price": 50000}
// ]
// },
// {
// "category": "Appliances",
// "products": [
// {"name": "Refrigerator", "price": 60000},
// {"name": "Microwave", "price": 20000}
// ]
// }
// ];
// 1.
// ○ Find the total cost of all products.
// ○ List all product names under "Electronics".
// Example Output:

// Total Cost: 200000
// Electronics Products: [Laptop, Phone]

void main() {
  var categories = [
    {
      "category": "Electronics",
      "products": [
        {"name": "Laptop", "price": 70000},
        {"name": "Phone", "price": 50000}
      ]
    },
    {
      "category": "Appliances",
      "products": [
        {"name": "Refrigerator", "price": 60000},
        {"name": "Microwave", "price": 20000}
      ]
    }
  ];

  int totalCost = 0;
  List<String> electronicsProducts = [];

  for (var category in categories) {
    for (var products in category["products"] as List) {
      totalCost += products['price'] as int;

      if (category['category'] == "Electronics") {
        electronicsProducts.add(products['name'] as String);
      }
    }
  }

  print("Total Cost: $totalCost");
  print("Electronics Products: $electronicsProducts");
}
