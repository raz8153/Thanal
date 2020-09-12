import 'dart:ui' show FontWeight;

import 'package:Thanal/pages/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';



class HomeRequests extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<HomeRequests> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        SingleChildScrollView(

            child: Column(
                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.all(50.0),
//                    color: colorOne,
//                    child: Text('        ThanalDonate',
//                      style: TextStyle(
//                        fontSize: 40.0,
//                        fontWeight: FontWeight.bold,
//                        color: Colors.white,
//                      ),
//                    ),
//
//                  ),

                  Container(
                    color: colorOne,
                    height: 70,
                    padding: EdgeInsets.fromLTRB(70, 20, 70, 20),
                    child: Material(
                      elevation: 7.0,
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text('Make a Request  ',
                            style: TextStyle(

                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: colorOne,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(margin: EdgeInsets.fromLTRB(20.0, 0, 0, 0),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: requests.length,
                          itemBuilder: (context, index) {
                            return Card(
                                elevation: 10.0,
                                margin: EdgeInsets.all(9),
                                child: Container(
                                    child: Column(
                                        children: <Widget>[
                                          Text(requests[index]["note"]),
                                          Container(
                                              height: 45.0,
                                              padding: EdgeInsets.fromLTRB(
                                                  15.0, 15.0, 5.0, 10.0),
                                              child: GestureDetector(
                                                // ignore: unnecessary_statements
                                                  onTap: () {
                                                    print('clicked contact');
                                                  },
                                                  child: Text('Contact' ,
                                                      style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        fontSize: 15,
                                                        color: colorOne
                                                

                                                      )

                                                  )
                                              )
                                          )
                                        ]
                                    )
                                )
                            );
                          }
                      )
                  )
                ]
            )
        )

    );
  }
}

var requests = [
  {
    "name": "st.marys orphanage",
    "place": "kochi",
    "purpose":"food",
    "amountRequired":"200000",
    "note":"Donations expected as books,dresses and "
        "funds for our orphanage",
  },
  {
    "name":"Santhosh",
    "place":"pala",
    "purpose":"heart surgery",
    "amountRequired":"300000",
    "note":"Immediate fund required for the operation",
  },
  {
    "name":"saraswathi",
    "place":"wayanad",
    "purpose":"higher studies",
    "amountRequired":"30000",
    "note":"Expecting fund for higher studies of a medical student.",
  },
  {
    "name":"sara",
    "place":"kalpatta",
    "purpose":"medical",
    "amountRequired":"40000",
    "note":"Expecting fund for amedical treatment.",
  },
];