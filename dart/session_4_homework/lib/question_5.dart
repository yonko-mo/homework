/*
Q5
Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.
*/
void main() {
  String text = 'EGP 12.50';
  double number= double.parse(text.substring(4));
  print(number);
}