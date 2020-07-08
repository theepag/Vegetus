import 'package:flutter/material.dart';
import 'package:vegetus/services/auth.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('Cart'),
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
