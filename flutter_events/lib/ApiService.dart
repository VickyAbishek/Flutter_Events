import 'package:flutter_events/models/events_podo.dart';
import 'package:http/http.dart' as http;

class ApiResponse {
  String url = "https://flutterevents.com/feed"; 

  Future<List<Events>> getEvents() async {
    final response = await http.get(url);
    return eventsFromJson(response.body);
  }


}