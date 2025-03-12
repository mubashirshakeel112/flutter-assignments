// Task 3: Real-World Polymorphism - Payment System
// Create an abstract class Payment with:
// ● amount
// ● An abstract method processPayment()
// Then, create two subclasses:
// 1. CashPayment (no extra field)
// processPayment() should print:
// Cash payment of {amount} received.
// 2. CardPayment (extra field: cardNumber)
// processPayment() should print:
// Card payment of {amount} processed with card {cardNumber}.
// ✅ Create payment objects, store them in a list, and call processPayment().

void main() {
  List<Payment> payments = [
    CashPayment(amount: 4000),
    CardPayment(amount: 50000, cardNumber: 35483746),
    CashPayment(amount: 100000),
  ];

  for (var payment in payments) {
    payment.processPayment();
  }
}

abstract class Payment {
  double amount;

  Payment({required this.amount});

  processPayment();
}

class CashPayment extends Payment {
  CashPayment({required double amount}) : super(amount: amount);

  @override
  processPayment() {
    print("Cash payment of $amount received");
  }
}

class CardPayment extends Payment {
  int cardNumber;

  CardPayment({required this.cardNumber, required double amount})
    : super(amount: amount);

  @override
  processPayment() {
    print("Card payment of $amount processed with card $cardNumber");
  }
}
