/*
Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
*/

void main() {
  String area = "restricted";
  int age = 17;
  bool hasParent = false;
  bool hasAccess = false;

  if (age >= 18 || hasParent) {
    hasAccess = true;
  }

  switch (area) {
    case "restricted":
      if (hasAccess) {
        print('allowed');
      } else {
        print('not allowed');
      }
      break;
    case 'general':
      print('allowed');
      break;

    default:
      print('Invalid area');
  }
}