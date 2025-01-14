```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final jsonData = jsonDecode(response.body);
      // Accessing elements of jsonData, Assuming jsonData is a list
      final firstElement = jsonData[0]; 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); //This will print the error message, but not specific enough
    rethrow; //Re-throwing the error to be handled higher up.
  }
}
```