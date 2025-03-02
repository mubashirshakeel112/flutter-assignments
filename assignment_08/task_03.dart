// Task 3: Encapsulation with Inheritance
// Create a BankAccount class with:
// ● A private field _balance (double)
// ● A constructor to initialize _balance
// ● deposit(amount), withdraw(amount), and getBalance() methods
// ● withdraw() should prevent withdrawal if balance < 500
// Then, create a ChildAccount class that inherits from BankAccount and:
// ● Adds a field guardianName (String)
// ● Adds a method showGuardian() that prints the guardian’s name
// ✅
//  Create a child account, make transactions, and test withdrawal restrictions.

void main() {
  ChildAccount bankAccount = ChildAccount(guardianName: "Ali");
  bankAccount.showGuardian();
  bankAccount.deposit(1000);
  bankAccount.deposit(300);
  bankAccount.withdraw(677);
  bankAccount.getBalance();
}

class BankAccount {
  double _balance = 0.0;

  BankAccount({double balance = 0.0}): _balance = balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited amount: $amount, New Balance: $_balance");
    } else {
      print("Invalid deposit amount.");
    }
  }

  void withdraw(double amount) {
    if (_balance - amount < 500) {
      print("Withdrawal failed: Current balance: $_balance");
    } else if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn amount: $amount, New Balance: $_balance");
    } else {
      print("Invalid withdrawal amount");
    }
  }

  void getBalance() {
    print("Current Balance: $_balance");
  }
}

class ChildAccount extends BankAccount {
  String? guardianName;

  ChildAccount({this.guardianName, double balance = 0.0}) : super(balance: balance);

  void showGuardian() {
    print("Guardian Name: $guardianName");
  }
}
