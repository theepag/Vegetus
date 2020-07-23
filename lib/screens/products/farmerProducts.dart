import 'package:flutter/material.dart';
import 'package:vegetus/screens/edit_product.dart';
class FarmerProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Products'),
      backgroundColor: Colors.green,
      actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.add,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProduct()));
              },
            )
          ],
      ),
    );
  }
}