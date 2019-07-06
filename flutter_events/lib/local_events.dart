import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_events/ApiService.dart';
import 'package:flutter_events/models/events_podo.dart';
import 'package:flutter_events/models/firebase_services.dart';

class LocalEventsScreen extends StatefulWidget {
  @override
  _LocalEventsScreenState createState() => _LocalEventsScreenState();
}

class _LocalEventsScreenState extends State<LocalEventsScreen> {

  @override
  Widget build(BuildContext context) {

    FirebaseDatastore fd = FirebaseDatastore();
    // fd.getLocalEvents();
    
    // ApiResponse ar = new ApiResponse("");

    return Container(
      // child: ListView.builder(
      //   itemCount: 5,
      //   itemBuilder: (context, index) => EventCard()),
      
      child: StreamBuilder<QuerySnapshot>(
        stream: fd.getLocalEvents(),
        // stream: api.getEvents(),
        builder: (context, snapshot) {

          // print("data");
          // print(snapshot.data.documents.length);
          // print(snapshot.data );
          if(snapshot.hasData ) {
            var newData = snapshot.data.documents.map((snapshot) {
              return Events.fromSnapshot(snapshot);
            }).toList();

            return ListView.builder(
            itemCount: newData.length,
            // print(snapshot.data );
            itemBuilder: (context, index) => EventCard(event : newData[index]),
            );
          } else {
            return Center(child: CircularProgressIndicator());
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
    print( event.eventName);
    return Container(
      child: Text(event.eventName + " " + event.city));
      
  }
}