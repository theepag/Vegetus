import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/models/user.dart';
import 'package:vegetus/services/auth.dart';

class FarmerProfile extends StatefulWidget {
  @override
  _FarmerProfileState createState() => _FarmerProfileState();
}

class _FarmerProfileState extends State<FarmerProfile> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    AuthServices _auth = AuthServices();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('Profile'),
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
      body: Text(user.uid),
    );
  }
}
