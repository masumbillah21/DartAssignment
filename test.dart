import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  String? line = stdin.readLineSync();

  List<int> list = line!.split(" ").map(int.parse).toList();

  int max = 0;
  int curr = 0;

  for (int i = 0; i < n; i++) {
    if (list[i] == 1) {
      curr++;
      max = max < curr ? curr : max;
    } else {
      curr = 0;
    }
    print("List" + list[i].toString());
    print("Max:" + max.toString());
  }

  print(max);
}
