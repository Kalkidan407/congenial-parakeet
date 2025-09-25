import 'dart:convert';
import 'package:http/http.dart' as http;
 
void main() async {
String lat1 = "8.989022";
String lon1 = "38.79036";
String lat2 = "9.03045";
String lon2 = "38.76530";
String apiKey = "your-api-key";  // Replace with your actual API key
 
// Construct the URL with the correct format
String url = "https://mapapi.gebeta.app/api/route/direction/?origin={$lat1,$lon1}&destination={$lat2,$lon2}&apiKey=$apiKey";
 
try {
  final response = await http.get(Uri.parse(url));
 
  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    print(data);
  } else {
    print('Error: ${response.statusCode}');
  }
} catch (e) {
  print('An error occurred: $e');
}
}