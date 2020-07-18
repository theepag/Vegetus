import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:vegetus/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:vegetus/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  AuthServices _auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().vegetables,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white12,
            elevation: 0.0,
            centerTitle: true,
            // actions: <Widget>[
            //   FlatButton.icon(
            //     icon: Icon(
            //       Icons.exit_to_app,
            //       color: Colors.green,
            //     ),
            //     label: Text('logout'),
            //     textColor: Colors.green,
            //     onPressed: () async {
            //       await _auth.SignOut();
            //     },
            //   )
            // ],
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.green),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(60, 35, 60, 40),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Container(
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 25, 0.0, 0.0),
                              child: Text(
                                'Eat fresh',
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                            Container(
                              child: Text(
                                'Vegetable',
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Text(
                        "Categories",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/tomato.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Tomato")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/broccoli.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Broccoli")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/potato.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Potato")
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/eggplant.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Eggplant")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/carrot.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Carrot")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/corn.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Corn")
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/tomato.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Tomato")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/broccoli.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Broccoli")
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              FlatButton(
                                  onPressed: null,
                                  child: Image.asset('graphics/potato.png',
                                      height: 50, width: 50)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Potato")
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
