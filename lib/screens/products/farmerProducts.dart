import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/models/product.dart';
import 'package:vegetus/models/user.dart';
import 'package:vegetus/screens/edit_product.dart';

class FarmerProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<List<Product>>(context);
    var firebaseUser = FirebaseAuth.instance.currentUser();
    final user = Provider.of<User>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Products'),
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
        body: (products != null)
            ? ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  if (products[index].ownerId == user.uid) {
                    return Card(
                      child: ListTile(
                        leading: Image.asset('graphics/broccoli.png'),
                        title: Text(products[index].name),
                        subtitle: Text(
                            products[index].price.round().toString() + " Rs"),
                        trailing: Icon(Icons.more_vert),
                      ),
                    );
                  }
                })
            : Center(child: CircularProgressIndicator()));
  }
}
