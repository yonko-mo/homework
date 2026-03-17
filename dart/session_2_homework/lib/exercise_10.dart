/*
a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
after each.
b) Create var greeting = 'Hi'; change it to another String and print.
c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).
*/

void main() {
  // point a answer
  dynamic value;
  value = 10;
  print(value);
  value = "mo";
  print(value);
  // point b answer
  var greeting = 'Hi';
  greeting = 'good evening';
  print(greeting);
  // point c answer
  num pi = 3.14159;
  print(pi.toInt());
  print(pi.toStringAsFixed(3));
}
