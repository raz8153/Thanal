import 'package:Thanal/pages/Donations/donations.dart';
import 'package:Thanal/pages/home.dart';
import 'package:Thanal/pages/profile.dart';
import 'package:flutter/material.dart';
import 'common.dart';

class UserHome extends StatefulWidget {
  UserHome({Key key}) : super(key: key);
  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  int _selectedIndex = 0;
  var style = TextStyle(fontFamily: "Poppins");

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(index);
    });
  }

  int _index = 1;
  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
        child = Home();
        break;
      case 1:
        child = Donations();
        break;
      case 2:
        child = Profile();
        break;
    }
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 55),
          // child: AppBarUpdator(),
          child: AppBar(
            elevation: 0,
            backgroundColor: colorOne,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(rad),
              bottomRight: Radius.circular(rad),
            )),
            title: Row(
              children: <Widget>[
                Text(
                  "Thanal",
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                Text(
                  "Donate",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: child,
        bottomNavigationBar: Container(
            height: 65,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(
              //     topRight: Radius.circular(16), topLeft: Radius.circular(16)),
            ),
            child: ClipRRect(
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(16.0),
              //   topRight: Radius.circular(16.0),
              // ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home', style: style),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.attach_money),
                    title: Text(
                      'Donate',
                      style: style,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Profile', style: style),
                  ),
                ],
                selectedItemColor: colorOne,
                unselectedItemColor: colorOne.withOpacity(0.4),
                unselectedIconTheme: IconThemeData(size: 28),
                onTap: (newIndex) => setState(() {
                  _index = newIndex;
                  _onItemTapped(newIndex);
                }),
                currentIndex: _index,
                showUnselectedLabels: false,
                iconSize: 30,
                type: BottomNavigationBarType.fixed,
              ),
            )));
  }
}
