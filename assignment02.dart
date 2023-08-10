/*
You are given a list of integers representing the grades obtained by a student in
various subjects: [85, 92, 78, 65, 88, 72].
Write a Dart program to calculate the average grade of the student. After calculating
the average, round it to the nearest integer. Determine if the student's average grade
is greater than or equal to 70 print Passed. Print Failed otherwise


Sample Output
Student's average grade: 80
Rounded average: 80
Passed

*/
void main() {
  List<int> grades = [85, 92, 78, 65, 88, 72];

  int sum = 0;

  for (int grade in grades) {
    sum += grade;
  }

  double average = sum / grades.length;

  // Converted to int as sample output does not have decimal value
  print("Student's average grade: ${average.toInt()}");
  print("Rounded average: ${average.toStringAsFixed(0)}");

  if (average >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }
}
