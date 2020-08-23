import 'package:flutter/material.dart';
import 'package:vegetus/models/farmer.dart';
import 'package:vegetus/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/models/product.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vegetus/models/user.dart';
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context){
    final products=Provider.of<List<Product>>(context);
   //final userss=Provider.of<List<Farmer>>(context);
    var firebaseUser = FirebaseAuth.instance.currentUser();
    final user = Provider.of<User>(context);
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
      body:StreamBuilder(
        stream: Firestore.instance.collection("users").snapshots(),
        builder: (context,snapshot){
   return  ListView.builder(
              itemCount: products.length,
              itemBuilder: (context,index){
                //if(products[index].ownerId==userss[index].UserId){
                return Column(
                  children: <Widget>[
                 
             Text(snapshot.data.documents[0]['Name']),
                    Text(products[index].name),
                    Text(products[index].kg.toString()),
                    
                   // Text(userss[index].UserId),
                    Text(products[index].price.toString()),
                    
                  ],
                );
                //}
              });
        }
      )
              
    );
  }
}
