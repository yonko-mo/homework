/*
a) Create a Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99}.
b) Print book['title'], update price, and add a new key 'author'.
c) Print all keys, values, and check if 'pages' exists as a key.
*/

void main() {
  // point a answer
  Map<String, dynamic> book = {
    'title': 'Dart Guide',
    'pages': 120,
    'price': 19.99,
  };
  // point b answer
  print(book['title']);
  book['price'] = 25;
  print(book);
  book['author'] = "mo";
  print(book);
  // point c answer
  print(book.keys);
  print(book.values);
  print(book.containsKey('pages'));
}