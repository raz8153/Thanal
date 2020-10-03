import 'Contribute/contribute.dart';
import 'Explore/explore.dart';
import 'package:flutter/material.dart';
import 'Notification/notification.dart';
import 'common.dart';
import 'Profile/donationHistory.dart';
import 'Home/home.dart';

class UserHome extends StatefulWidget {
  UserHome({Key key}) : super(key: key);
  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
//  int _selectedIndex = 0;
  var style = TextStyle(fontFamily: "Poppins");

//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//      print(index);
//    });
//  }

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    Widget child = Contribute();
    switch (_index) {
      case 0:
        print("raz0");
        child = Home();
        break;
      case 1:
        print("raz1");
        child = Explore();
        break;

      case 2:
        print("raz3");
        child = Notifications();
        break;
      case 3:
        print("raz4");
        child = Profile();
        break;
    }
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 55),
          // child: AppBarUpdator(),
          child: AppBar(
            elevation: 0,
            backgroundColor: colorTwo,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(rad),
              bottomRight: Radius.circular(rad),
            )),
            title: Row(
              children: <Widget>[
                Text(
                  "Thanal",
                  style: TextStyle(fontWeight: FontWeight.w900, color: colorOne),
                ),
                Text(
                  "Donate",
                  style: TextStyle(fontWeight: FontWeight.w400, color: colorOne),
                )
              ],
            ),
          ),
        ),
//        backgroundColor: Colors.white,
        extendBody: true,
       // extendBodyBehindAppBar: true,
        body: child,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Contribute()));

        },
        backgroundColor:Colors.tealAccent[700],
        child:Icon(Icons.add)),
        bottomNavigationBar:
        Container(
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
                    icon: Icon(Icons.search),
                    title: Text(
                      'Explore',
                      style: style,
                    ),
                  ),
                  // BottomNavigationBarItem(
                  //   icon: Icon(Icons.add_circle_outline),
                  //   title: Text('Contribute', style: style),
                  // ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    title: Text('Notify', style: style),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    title: Text('Profile', style: style),
                  ),
                ],
                selectedItemColor: colorOne,
                unselectedItemColor: colorOne.withOpacity(0.4),
                unselectedIconTheme: IconThemeData(size: 28),
                currentIndex: _index,
                onTap: (int newIndex) => setState(() {
                  _index = newIndex;
//                  _onItemTapped(newIndex);
                }),
//                currentIndex: _index,
                showUnselectedLabels: false,
                iconSize: 30,
                type: BottomNavigationBarType.fixed,
              ),
            )));
  }
}
