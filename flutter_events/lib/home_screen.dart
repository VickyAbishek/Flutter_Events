import 'package:flutter/material.dart';
import 'global_events.dart';
import 'package:flutter_events/local_events.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Events"),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Global'),
              Tab(text: 'Local')
            ]
          ),
        ),
        body: TabBarView(
          children: [
            GlobalEventsScreen(),
            LocalEventsScreen()
          ]
          // children: [
          //   Icon(Icons.directions_car),
          //   Icon(Icons.directions_transit)
          // ],
        ),
        // body: TabBarView(
        //   children: <Widget>{
        //     Text('Global'),
        //     Text('Local')
        //   }
        // ),
      ),
      );
  }

}



class _HomeScreenState extends State<HomeScreen1> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        

      ),
    );
  }
}