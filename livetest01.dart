/*
Create a Map representing persons with key-value pairs. 
The keys are "PersonID," "Name," "Age," "Salary," and "Gender." 

Only the values for "PersonID," "Age," and "Salary" will be numbers. 
Print out the "Salary" value from the map.


*/

void main() {
  Map<String, dynamic> persons = {
    "PersonID": 1001,
    "Name": "Masum",
    "Age": 30,
    "Salary": 100000,
    "Gender": "Male"
  };

  print(persons["Salary"]);
}
