import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/providers/product_provider.dart';
import 'package:vegetus/services/auth.dart';
import 'screens/wrapper.dart';
import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>ProductProvider(),
          child: StreamProvider<User>.value(
          value: AuthServices().user, child: MaterialApp(home: Wrapper())),
    );
  }
}
