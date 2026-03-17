/*
Q8
Create a program with a setting called API_URL that is empty. If it is empty, replace it with
'https://example.com'. Print the new value in capital letters.
*/
void main() {
  String apiUrl = '';
  String newApiUrl = apiUrl.isEmpty
      ? 'https://example.com'
      : apiUrl;
  print(newApiUrl.toUpperCase());
}