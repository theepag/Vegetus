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
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white12,
            elevation: 0.0,
            centerTitle: true,
            // actions: <Widget>[
            //   FlatButton.icon(
            //     icon: Icon(
            //       Icons.exit_to_app,
            //       color: Colors.green,
            //     ),
            //     label: Text('logout'),
            //     textColor: Colors.green,
            //     onPressed: () async {
            //       await _auth.SignOut();
            //     },
            //   )
            // ],
          ),
          body: Container(
            child: Container(
              decoration: BoxDecoration(color: Colors.green),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 360),
              child: Container(
                margin: EdgeInsets.fromLTRB(60, 35, 60, 40),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 25, 0.0, 0.0),
                        child: Text(
                          'Eat fresh',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Vegetable',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
