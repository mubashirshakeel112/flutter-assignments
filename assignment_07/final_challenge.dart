// Create a  Bank Account System  with:
// 1.  BankAccount  class:
// ○  Fields:  accountNumber  ,  _balance  (private)
// ○  Methods:  deposit()  ,  withdraw()  ,  getBalance()
// ○  Prevent withdrawal if balance  goes below 1000
// 2.  Test Cases:
// ○  Deposit money
// ○  Withdraw valid and invalid amounts

void main() {
  BankAccount account1 = BankAccount(accountNumber: 1234);
  account1.deposit(3000);
  account1.deposit(4000);
  print(account1.withdraw(8000));
  print(account1.withdraw(6000));
}

class BankAccount {
  int? accountNumber;
  double _balance = 0;

  BankAccount({required this.accountNumber});

  deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited amount: $amount, New Balance: $_balance");
    } else {
      return "Negative value cann't be accept";
    }
  }

  withdraw(double amount) {
    if (_balance - amount < 1000) {
      return "Withdrawal failed: Balance cannot go below 1000.";
    } else if (amount > _balance) {
      return "Withdrawal failed: Insufficient balance.";
    } else {
      _balance -= amount;
      return "Withdrawal successful: $amount withdrawn. Remaining balance: $_balance.";
    }
  }

  getBalance() {
    return "Your current balance is $_balance";
  }
}
