import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vegetus/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/models/user.dart';
import 'package:vegetus/screens/farmerNavigation.dart';

import 'package:vegetus/screens/userNavigation.dart';

class Wrapper extends StatelessWidget {
  String userType;
  final Firestore database = Firestore.instance;
  final firestoreInstance = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    //Return either home or login
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      _onPressed();
      return UserNavigation();
    }
  }

  _onPressed() async {
    var firebaseUser = await FirebaseAuth.instance.currentUser();
    firestoreInstance
        .collection("users")
        .document(firebaseUser.uid)
        .get()
        .then((DocumentSnapshot snapshot) {
      var document = snapshot.data;
      userType = document['userType'];
    });
    print(userType);
  }
}
