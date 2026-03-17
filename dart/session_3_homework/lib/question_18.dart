/*
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
*/
/*
Question 18
Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions.
*/
void main() {
  Map<String, String?> environmentVariables = {'debugMode': null};

  String debugValue = environmentVariables['debugMode'] ?? 'false';

  String upperValue = debugValue.toUpperCase();

  print('DEBUG MODE: $upperValue');

  if (upperValue == 'TRUE') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}