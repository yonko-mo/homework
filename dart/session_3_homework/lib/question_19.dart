/*
Question 19
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.
*/
void main() {
  List<String> names = ['mohamed', 'alaa', 'mohamed', 'ahmed'];
  Map<String, int> occurrencesCounts = {};
  for (String name in names) {
    if (occurrencesCounts.containsKey(name)) {
      occurrencesCounts[name] = occurrencesCounts[name]! + 1;
    } else {
      occurrencesCounts[name] = 1;
    }
  }

  if (occurrencesCounts['mohamed']! > 1) {
    print('mohamed appears more than once');
  } else {
    print('mohamed appears once');
  }
}