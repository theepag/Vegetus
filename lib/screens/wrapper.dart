import 'package:flutter/material.dart';
import 'package:vegetus/screens/authenticate/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/models/user.dart';

import 'package:vegetus/screens/userNavigation.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Return either home or login
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return UserNavigation();
    }
  }
}
