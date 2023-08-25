/*
Define an abstract class Account with the following properties:
●   accountNumber (integer)
●   balance (double)

It should also have the following methods:
●  deposit(double amount): Adds the specified amount to the account balance.
●  withdraw(double amount): Abstract method that deducts the specified amount from the account balance.

*/
abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("$amount successfully deposited.");
  }

  void withdraw(double amount);
}

/*
Define a class SavingsAccount that extends the Account class. 
It should have an additional property called 
interestRate (double).

Implement the withdraw() method in the SavingsAccount class as follows:

●       Subtract the specified amount from the account balance.
●       Apply the interest rate to the remaining balance.
*/

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(
      {required int accountNumber,
      required double balance,
      required this.interestRate})
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      balance *= (1 + interestRate);
      print("$amount successfully withdrawn");
      print('Savings Account Balance after withdrawal plus interest: $balance');
    } else {
      print('Insufficient balance!!');
    }
  }
}

/*
Define a class CurrentAccount that extends the Account class. 
It should have an additional property called overdraftLimit (double).

Implement the withdraw() method in the CurrentAccount class as follows:
● Allow withdrawals up to the overdraft limit.
● If the withdrawal amount exceeds the overdraft limit, print a message indicating insufficient funds.
*/

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(
      {required int accountNumber,
      required double balance,
      required this.overdraftLimit})
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print("$amount successfully withdrawn");
      print('Current Account Balance after withdrawal: $balance');
    } else {
      print('Insufficient funds. Exceeds overdraft limit.');
    }
  }
}

/*
In main()
●       Create an instance of the SavingsAccount class by providing values 
for the account number, initial balance, and interest rate.
●      Use the instance to perform operations like depositing and withdrawing money.

●       Create an instance of the CurrentAccount class by providing values for 
the account number, initial balance, and overdraft limit.
●       Use the instance to perform operations like depositing and withdrawing.
*/
void main() {
  print("======Savings Account======");
  // Create a SavingsAccount instance
  var savings = SavingsAccount(
    accountNumber: 12345,
    balance: 1000.0,
    interestRate: 0.05,
  );
  print(
      'Savings Account Initial balance: ${savings.balance} and Interest Rate: ${savings.interestRate}');

  // Deposit into SavingsAccount
  savings.deposit(500.0);
  print('Savings Account Balance after deposit: ${savings.balance}');

  // Withdraw from SavingsAccount
  savings.withdraw(200.0);

  print("\n\n======Current Account======");
  // Create a CurrentAccount instance
  // Account number, initial balance, overdraft limit
  var current = CurrentAccount(
    accountNumber: 23456,
    balance: 2000.0,
    overdraftLimit: 1000.0,
  );
  print(
      'Current Account Initial balance: ${current.balance} and overdraft: ${current.overdraftLimit}');

  // Deposit into CurrentAccount
  current.deposit(800.0);
  print('Current Account Balance after deposit: ${current.balance}');

  // Withdraw from CurrentAccount
  current.withdraw(2500.0); // Exceeding overdraft limit
}
