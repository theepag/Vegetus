import 'package:flutter/material.dart';

class Tomato extends StatefulWidget {
  @override
  _TomatoState createState() => _TomatoState();
}

class _TomatoState extends State<Tomato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text("Vegetable Farm"),
        actions: <Widget>[
         // new IconButton(icon: Icon(Icons.search, color:Colors.white,), onPressed: () {} ),
          new IconButton(icon: Icon(Icons.shopping_cart, color:Colors.white,), onPressed: () {} )
             ],
      ),
      // body: new ListView(
      //   children: <Widget>[
      //       new ListTile(
      //       title: new Text('Green Grass',
      //       textAlign: TextAlign.left,
      //                style: TextStyle(
      //                 fontSize: 15, 
      //                color: Colors.white
      //           ),
      //       ),
      //     ),
      //   ],
      // ),          
      
    );
  }
}