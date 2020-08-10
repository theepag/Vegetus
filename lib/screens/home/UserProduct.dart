import 'package:flutter/material.dart';

class UserProduct extends StatefulWidget {
  @override
  _UserProductState createState() => _UserProductState();
}

class _UserProductState extends State<UserProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProductName"),
      ),
      body: Container(),
    );
  }
}
