import 'package:Thanal/pages/donation.dart';
import 'package:Thanal/pages/home.dart';
import 'package:Thanal/pages/profile.dart';
import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  UserHome({Key key}) : super(key: key);
  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  int _selectedIndex = 0;
  var style = TextStyle(fontFamily:"Poppins");

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _index = 0;
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
        backgroundColor: Colors.transparent,
        extendBody: true,
        extendBodyBehindAppBar: true,

        body:
        SizedBox.expand(child: child),


        bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(horizontal:8, vertical:2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16), topLeft: Radius.circular(16)),

            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    title: Text('Home', style: style),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.attach_money),
                    title: Text('Donate', style: style,),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Profile', style: style),
                  ),

                ],
                selectedItemColor: Colors.amber[600],
                unselectedItemColor: Colors.grey,
                unselectedIconTheme: IconThemeData(size: 28),
                onTap: (newIndex) => setState(() => _index = newIndex),
                currentIndex: _index,
                showUnselectedLabels: false,
                iconSize: 30,
                type: BottomNavigationBarType.fixed,

              ),
            )


        ));
  }
}