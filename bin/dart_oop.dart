import 'package:args/args.dart';
import 'features/transactions/bankAccount.dart';
const String version = '0.0.1';



void main(List<String> arguments) {
  BankAccount account = BankAccount();
  account.deposit = 100.0; // Deposit 100
  print(account.getBalance); // Initial balance
  account.withdraw = 50.0; // Withdraw 50
  print(account.getBalance); // Balance after withdrawal
}
