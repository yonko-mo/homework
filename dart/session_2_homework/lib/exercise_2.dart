/*
Exercise 2:
a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one.
*/

void main() {
  // point a answer
  String country = "egypt";
  int year = 2002;
  double weight = 80;
  bool likesCoding = true;
  // point b answer
  print(
    "i live in $country, i was born in $year , my weight is $weight kg and it\'s $likesCoding that i like coding",
  );
  // point c answer
  weight = 90.0;
  print("Updated weight: $weight kg");
}
