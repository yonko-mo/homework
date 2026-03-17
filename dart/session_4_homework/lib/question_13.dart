/*
Q13
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
each name appears. Print only the names that appear more than once 
*/
void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> counts = {};
  for (var name in names) {
    counts[name] = (counts[name] ?? 0) + 1;
  }

  for (var name in counts.entries) {
    if (name.value > 1) {
      print('${name.key} appears ${name.value} times');
    }
  }

  // another way to print the count of names that appeared more than once
  
  // for (int i = 0; i < counts.keys.length; i++) {
  //   String key = counts.keys.elementAt(i);
  //   if (counts[key]! > 1) {
  //     print('The name $key appeared more than once');
  //   }
  // }
}
