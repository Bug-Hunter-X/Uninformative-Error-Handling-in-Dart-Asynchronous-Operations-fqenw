```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Further processing of jsonData
      final firstElement = jsonData[0];
      print('First element: $firstElement');
    } else {
      // More specific error handling
      throw Exception('Request failed with status: ${response.statusCode}. Response Body: ${response.body}');
    }
  } catch (e) {
    //More informative error message
    print('Error fetching data: $e');
    //In real application, log this error and implement a retry mechanism or fallback logic. 
    //rethrow; //Consider removing rethrow if error is already handled adequately.
  }
}
```