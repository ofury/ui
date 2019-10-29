import 'package:flutter/material.dart';
import 'home_bottom.dart';
import 'home_top.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HomeTop(),
            HomeBottom(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xFFE52020)),
              title: Text("Home", style: TextStyle(color: Color(0xFFE52020)))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              title: Text("Search", style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_border,
              ),
              title: Text(
                "Bookmark",
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text("Profile"))
        ],
      ),
    );
  }
}
