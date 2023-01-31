import 'package:collection/collection.dart';

void selectionSort<E extends Comparable<dynamic>>(List list) {
  for (var start = 0; start < list.length - 1; start++) {
    var lowest = start;
    for (var next = start + 1; next < list.length; next++) {
      if (list[next].compareTo(list[lowest]) < 0) {
        lowest = next;
      }
    }
    if (lowest != start) {
      list.swap(lowest, start);
    }
  }
}

void main() {
  List list = [3, 6, 2, 7, 9, 4, 8];
  print(list);
  selectionSort(list);
  print(list);
}
