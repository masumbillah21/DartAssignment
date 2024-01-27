void main() {
  List<int> nums1 = [1, 2];
  List<int> nums2 = [3, 4];

  List<int> margedList = nums1 + nums2;
  margedList.sort();
  List<int> x = [];

  if (margedList.length % 2 == 0) {
    x.add(margedList[(margedList.length ~/ 2) - 1]);
    x.add(margedList[(margedList.length ~/ 2)]);
  } else {
    x.add(margedList[(margedList.length ~/ 2)]);
  }

  print(x);
}
