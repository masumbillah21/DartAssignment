/*
Create a Person class with 
properties: 
name (string), 
age (integer), and 
address (string). 

Methods: 
sayHello() (prints "Hello, my name is $yourName.") and 
getAgeInMonths() (returns age in months). 
Constructor takes name, age, and address. 
In main(), create a Person object using constructor.

 Then in main() call sayHello() method, and print getAgeInMonths() result. The main() function is provided in the code template.

Code Template:


Sample Output:

Hello, my name is Ostad.
Age in months: 300
*/
class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void sayHello() {
    print("Hello, my name is ${this.name}.");
  }

  int getAgeInMonths() {
    return this.age * 12;
  }
}

void main() {
  String name = "Ostad"; // assign your name
  int age = 25; //assign your age
  String address = "Baridhara, Dhaka"; //assign any address
  Person person = Person(name, age, address);
  person.sayHello();
  int ageInMonths = person.getAgeInMonths();
  print("Age in months: $ageInMonths");
}
