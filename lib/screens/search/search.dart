import 'package:flutter/material.dart';
import 'package:vegetus/screens/home/home.dart';
import 'package:vegetus/services/auth.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  AuthServices _auth = AuthServices();

  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Search");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if(this.cusIcon.icon == Icons.search){
                this.cusIcon = Icon(Icons.cancel);
                this.cusSearchBar = TextField(
                textInputAction: TextInputAction.go,
                decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search for Vegetables..",
                hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                ),
                 ),
                style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                   ),
                    );
                   }
                else{
                  this.cusIcon = Icon(Icons.search);
                  this.cusSearchBar = Text("Search");
                     }
                    }
                  );
                },
                 icon: cusIcon,
                ),
                IconButton(onPressed: () {},
                icon: Icon(Icons.exit_to_app),
                ),
              ],
               title: cusSearchBar,
               backgroundColor: Colors.green[600],
              ),
            );
          }
        }
