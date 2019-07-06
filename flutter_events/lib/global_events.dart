import 'package:flutter/material.dart';
import 'package:flutter_events/ApiService.dart';

import 'models/events_podo.dart';

class GlobalEventsScreen extends StatefulWidget {
  @override
  _GlobalScreenState createState() => _GlobalScreenState();
}

class _GlobalScreenState extends State<GlobalEventsScreen> {

  ApiResponse api = new ApiResponse();

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: ListView.builder(
      //   itemCount: 5,
      //   itemBuilder: (context, index) => EventCard()),
      
      child: FutureBuilder<List<Events>>(
        future: api.getEvents(),
        builder: (context, snapshot) {

          // print("data");
          // print(snapshot.data[0].address );
          if(snapshot.hasData ) {
            return ListView.builder(
            itemCount: snapshot.data.length,
            // print(snapshot.data );
            itemBuilder: (context, index) => EventCard(event : snapshot.data[index]),
            );
          } else {
            return Center(child: CircularProgressIndicator());
            // CircularProgressIndicator(
              // strokeWidth: Widget,
              
            // );
          }
          
        },
      ),
      );
    
  }
}

class EventCard extends StatelessWidget {
  final Events event;
  
  EventCard({this.event});
  @override
  Widget build(BuildContext context) {
    // print(event.eventName);
    return Container(
      
      child: Text(event.eventName));
  }
}