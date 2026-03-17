/*
Question 15
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
*/

/*
/ --> home page
/products --> products data from map
/profile --> user data from map
*/

/*
Question 15
Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
*/

/*
/ --> home page
/products --> products data from map
/profile --> user data from map
*/

import 'dart:io';

void main() {
  Map<String, String> screens = {
    '/profile': 'profile screen',
    '/': 'home screen',
    '/products': 'products screen',
  };

  print('please enter path (/, /products, /profile);');
  String? path = stdin.readLineSync();
  if (path == null || path.isEmpty) {
    print('No route provided');
    return;
  }
  switch (path) {
    case '/':
      print('display ${screens[path]}');
      break;
    case '/products':
      print('display ${screens[path]}');
      break;
    case '/profile':
      print('display ${screens[path]}');
      break;
    default:
      print('No screen found');
  }
}