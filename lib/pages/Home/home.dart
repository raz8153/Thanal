
import 'package:Thanal/pages/Home/homeGiveAway.dart';
import 'package:Thanal/pages/Home/homeRequest.dart';
import 'package:flutter/material.dart';

import '../common.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2,
        vsync: this
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    final tab =  TabBar(tabs: <Tab>[
//       Tab(icon:  Text("Give Away")),
//       Tab(icon:  Text("Requests")),
//    ]);
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: colorOne,
            labelColor: colorOne,
            tabs: [
               Tab(child: Text("Give Away")),
               Tab(child: Text("Request")),
            ],
            controller: _tabController,
            indicatorColor: colorOne,
            indicatorSize: TabBarIndicatorSize.tab,),
          bottomOpacity: 1,
        ),
      ),
      body: TabBarView(
        children: [
           HomeGiveAway(),
           HomeRequests(),
        ],
        controller: _tabController,
      ),


    );
  }
}
