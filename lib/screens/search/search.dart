import 'package:flutter/material.dart';
import 'package:vegetus/services/auth.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        backgroundColor: Colors.green[600],
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
    );
  }
}
