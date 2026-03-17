// What is the difference between var and dynamic in Dart? Provide an example of each.

// Answer: 

// var uses type inference, meaning the variable’s type is determined at compile time and cannot change later.

// dynamic disables static type checking, so the variable’s type can change at runtime.

// references : 

// link 1: https://stackoverflow.com/questions/12416507/difference-between-var-and-dynamic-type-in-dart

// link 2: https://medium.com/@azharbinanwar/what-is-the-difference-between-var-and-dynamic-dart-flutter-1cdbbd8018e6

// Example:
void main() {

  // this is a var example
  
  // here we declared and intialized a variable called value with var keyword and it takes string datatype from the value that it was assigned to
  // var value = "mohamed";
  
  // now we tried to assign a different value with different datatype and it caused error because var is a keyword not a datatype that can take any other datatypes like dynamic
  // value = 3.5; // Compile-time error
  //=============================================================================================================================================================================
  
  // this a dynamic example

  // here we declared and intialized a variable called value with dynamic datatype and it takes string datatype from the value that it was assigned to like the previous var example
  // dynamic value = "mohamed";

  // now we tried to assign a different value with different datatype but this time it worked not like var keyword because dynamic is an actual datatype in dart that can takes any other datatypes like int ,double , String, num , bool
  // value = 3.5; // Allowed
}
