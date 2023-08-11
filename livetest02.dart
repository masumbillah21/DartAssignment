/*
Question

Write a Dart program that calculates the total price of items in a shopping cart, including tax. 
Given a list of item prices [12.99, 8.75, 21.50, 5.00] 
and a tax rate of 8%, calculate the total cost after applying the tax. 
Print the total cost to two decimal places.

 Sample Output: 
 Total Cost: $52.10

*/
void main() {
  ///Given a list of item prices [12.99, 8.75, 21.50, 5.00]
  List<double> shoppingCart = [12.99, 8.75, 21.50, 5.00];

  ///Tax rate of 8%
  double tax = 0.08; // 8% = 8 / 100 = 0.08
  double totalPrice = 0;

  ///Total shopping cart price without tax
  for (double price in shoppingCart) {
    totalPrice += price;
  }

  ///Total Tax Amount
  double totalTax = totalPrice * tax;

  ///Total cost after applying the tax
  double totalCostWithTax = totalPrice + totalTax;

  ///Print the total cost to two decimal places
  print("Total Cost: \$${totalCostWithTax.toStringAsFixed(2)}");
}
