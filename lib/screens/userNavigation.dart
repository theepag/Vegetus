import 'package:flutter/material.dart';
import 'package:vegetus/screens/cart/cart.dart';
import 'package:vegetus/screens/home/home.dart';
import 'package:vegetus/screens/profile/profile.dart';
import 'package:vegetus/screens/search/search.dart';

class UserNavigation extends StatefulWidget {
  @override
  _UserNavigationState createState() => _UserNavigationState();
}

class _UserNavigationState extends State<UserNavigation> {
  int currentTab = 0;
  final List<Widget> screens = [Home(), Search(), Cart(), Profile()];

  Widget currentScreen = Home();
  final PageStorageBucket backet = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: backet, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Home();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home,
                        color: currentTab == 0 ? Colors.green : Colors.grey),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: currentTab == 0 ? Colors.green : Colors.grey),
                    )
                  ],
                ),
                minWidth: 40,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Search();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search,
                        color: currentTab == 1 ? Colors.green : Colors.grey),
                    Text(
                      'Search',
                      style: TextStyle(
                          color: currentTab == 1 ? Colors.green : Colors.grey),
                    )
                  ],
                ),
                minWidth: 40,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Cart();
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shopping_cart,
                        color: currentTab == 2 ? Colors.green : Colors.grey),
                    Text(
                      'Cart',
                      style: TextStyle(
                          color: currentTab == 2 ? Colors.green : Colors.grey),
                    )
                  ],
                ),
                minWidth: 40,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentScreen = Profile();
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person,
                        color: currentTab == 3 ? Colors.green : Colors.grey),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: currentTab == 3 ? Colors.green : Colors.grey),
                    )
                  ],
                ),
                minWidth: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
