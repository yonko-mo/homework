/*
Q6
Create a program that calculates the factorial of 6 and prints the result.
*/
// 6*5*4*3*2*1
void main() {
  int number = 6, factorial = 1;
  while (number > 0) {
    factorial *= number;
    number--;
  }
  print('The factorial of 6 is $factorial');
}