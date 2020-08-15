import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: StreamBuilder(
        stream: getUsersStreamSnapshots(context),
        builder: (context, snapshot){
          if(!snapshot.hasData) return const Text("Loading...");
          return new ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (BuildContext context, int index) => 
                 buildUsercard(context,snapshot.data.document[index]));
        }
      ),
    );
  }

  Stream <QuerySnapshot> getUsersStreamSnapshots(BuildContext context) async*{
    final uid = await Provider.of(context).auth.getCurrentID();
    yield* Firestore.instance.collection('users').document(uid).collection('users').snapshots();
  }


  Widget buildUsercard(BuildContext context, DocumentSnapshot user){
  
    return new Container(
      child: Card(
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:8.0, bottom:4.0),
              child: Row(
                children: <Widget>[
                  Text(user['name'],style:new TextStyle(
                    fontSize: 30.0),),
                    
                ],
              ),
            ),


        ],
        ),
      ),
      ),
    );
  }
}