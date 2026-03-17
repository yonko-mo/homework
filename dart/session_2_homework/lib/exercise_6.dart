/* 
Exercise 6:
a) Create List animals with three values.
b) Add a new animal, remove the last one, and update the second element.
c) Print animals.first, animals.last, and animals.length.
*/

void main() {
  // point a answer
  List<String> animals = ['cat', 'dog', 'mouse'];
  // point b answer
  animals.add('lion');
  animals.removeLast();
  animals[1] = 'monkey';
  // point c answer
  print(animals.first);
  print(animals.last);
  print(animals.length);
}
