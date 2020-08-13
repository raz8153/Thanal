import 'package:Thanal/pages/Contribute/Donations/donations.dart';
import 'package:Thanal/pages/Contribute/GiveAwayForm/giveAwayForm.dart';
import 'package:Thanal/pages/Contribute/RequestForm/requestForm.dart';
//import 'package:Thanal/pages/Profile/donationHistory.dart';
import 'package:flutter/material.dart';

import '../common.dart';

class Contribute extends StatelessWidget {
  @override
  Widget build(BuildContext context){
  print("raz0");
  return Scaffold(
      body:Container(
//          color: colorOne,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left:5.0 ,top:150.0, right: 5.0, bottom:130.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 100,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
                        ),
                      color: colorOne,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                  "Donate",
                                  style: TextStyle(fontWeight: FontWeight.w900, color: colorTwo, fontSize: 40)
                              ),
                              Text(
                                  "Provide financial help to our friends",
                                  style: TextStyle(fontWeight: FontWeight.w300, color: colorTwo)
                              )
                            ],

                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Donations()),
                          );                        },
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 300,
                    height: 100,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
                        ),
                        color: colorOne,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                  "Give Away",
                                  style: TextStyle(fontWeight: FontWeight.w900, color: colorTwo, fontSize: 40)
                              ),
                              Text(
                                  "Have something that may be",
                                  style: TextStyle(fontWeight: FontWeight.w300, color: colorTwo)
                              ),
                              Text(
                                  "helpful for people in need ?",
                                  style: TextStyle(fontWeight: FontWeight.w300, color: colorTwo)
                              )
                            ],

                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GiveAwayForm()),
                          );                        },
                    ),
                  ),
                  Spacer(),

                  Container(
                    width: 300,
                    height: 100,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
                        ),
                        color: colorOne,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                  "Request",
                                  style: TextStyle(fontWeight: FontWeight.w900, color: colorTwo, fontSize: 40)
                              ),
                              Text(
                                  "In short of coomodities ?",
                                  style: TextStyle(fontWeight: FontWeight.w300, color: colorTwo)
                              ),
                              Text(
                                  "Ask our Community",
                                  style: TextStyle(fontWeight: FontWeight.w300, color: colorTwo)
                              )
                            ],

                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RequestForm()),
                          );                        },
                    ),
                  )
                ],
              ),
            ),
          )
      )
    );
  }
}
