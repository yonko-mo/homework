/*
Exercise 7:
a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result.
*/
void main() {
  // point a answer
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  // point b answer
  Set<int> numbersSet = numbers.toSet();
  print(numbersSet);
  // point c answer
  numbersSet.add(8);
  print(numbersSet);
  numbersSet.remove(5);
  print(numbersSet);
  print(numbersSet.contains(6));
}
