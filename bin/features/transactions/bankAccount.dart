class BankAccount{

  double _balance= 0.0;
  get getBalance => _balance;

  set deposit(double amount){
    if(amount > 0){
      _balance += amount;
    } else {
      print("Deposit amount must be positive");
    }
  }
  set withdraw(double amount){
    if(amount > 0 && amount <= _balance){
      _balance -= amount;
    } else if (amount > _balance) {
      print("Insufficient funds");
    } else {
      print("Withdrawal amount must be positive");
    }
  }

}