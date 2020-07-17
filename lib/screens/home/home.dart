import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vegetus/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().vegetables,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
            backgroundColor: Colors.green[600],
            elevation: 0.0,
            actions: <Widget>[
              FlatButton.icon(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                label: Text('logout'),
                textColor: Colors.white,
                onPressed: () async {
                  await _auth.SignOut();
                },
              )
            ],
          ),
          body: Container(
            child: Container(
                color: Colors.green[400],
                margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                child: Container(
                  margin: EdgeInsets.fromLTRB(175, 20, 175, 20),
                  child: Text(
                    'Eat fresh',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
          )),
    );
  }
}
