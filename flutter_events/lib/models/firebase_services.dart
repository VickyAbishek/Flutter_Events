// import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDatastore{
  getLocalEvents() {
    return Firestore.instance.collection("localevents").snapshots();
      // .document("RXoPsKegu9f020rpcypd")
    
      

  }
}