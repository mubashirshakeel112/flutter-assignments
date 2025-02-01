// Task 7: Customer Shopping Cart
// Write a program to process a shopping cart stored as a Map:
// var cart = {
// "items": [
// {"name": "Shirt", "price": 2000, "quantity": 2},
// {"name": "Pants", "price": 3000, "quantity": 1},
// {"name": "Shoes", "price": 4000, "quantity": 1}
// ],
// "discount": 10 // in percentage
// };
// 1.
// ○ Calculate the total cost before the discount.
// ○ Apply the discount and display the final amount.
// Example Output:
// Total Before Discount: 12000
// Final Amount: 10800

void main() {
  var cart = {
    "items": [
      {"name": "Shirt", "price": 2000, "quantity": 2},
      {"name": "Pants", "price": 3000, "quantity": 1},
      {"name": "Shoes", "price": 4000, "quantity": 1}
    ],
    "discount": 10 // in percentage
  };

  int totalPriceBeforeDiscount = 0;
  for (var c in cart['items'] as List) {
    if (c['quantity'] > 1) {
     totalPriceBeforeDiscount += (c['price'] as int) * (c['quantity'] as int);
    } else {
      totalPriceBeforeDiscount += c['price'] as int;
    }
  }

  int discount = cart['discount'] as int;

  print("Total Before Discount: $totalPriceBeforeDiscount");
  var discountAmmount = totalPriceBeforeDiscount * discount / 100;
  var finalAmmount = totalPriceBeforeDiscount - discountAmmount;
  print("Final Amount: $finalAmmount");
}
