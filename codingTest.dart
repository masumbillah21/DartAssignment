import 'dart:io';

void main() {
  List<String> name = [];
  for (int i = 0; i < 10; i++) {
    String? line1 = stdin.readLineSync()!;
    name.add(line1.toUpperCase());
  }
  int total = 0;
  for (int i = 0; i < 10; i++) {
    if (name[i].contains('T')) {
      total++;
    }
  }

  print(total);
}
