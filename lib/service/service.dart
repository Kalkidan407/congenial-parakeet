import 'dart:convert';
import 'package:http/http.dart' as http;

class MapService {
  final String apiKey;

  MapService(this.apiKey);

  Future<void> getRouteDirections(String origin, String destination) async {
    String url =
        "https://mapapi.gebeta.app/api/route/direction/?origin=$origin&destination=$destination&apiKey=$apiKey";

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
}
