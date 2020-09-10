import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'widgets.dart';
import 'package:Thanal/pages/common.dart';

class Donations extends StatefulWidget {
  //comment
  @override
  _DonationsState createState() => _DonationsState();
}

class _DonationsState extends State<Donations>
    with SingleTickerProviderStateMixin {
  Color colorOne = Color.fromRGBO(3, 184, 152, 1);
  Size pageSize;
  double _prevScrollOffset = 0;
  @override
  Widget build(BuildContext context) {
    pageSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
      height: pageSize.height,
      width: pageSize.width,
      color: Colors.white,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          SizedBox(
            height: 95,
          ),
          Text(
            "How would you like to help?",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: colorOne),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
                child: Column(
              children: [
                Row(children: [
                  help(data, 2, height: pageSize.height / 5),
                  help(data, 3, height: pageSize.height / 5),
                ]),
                SizedBox(height:10),
                Row(children: [
                  help(data, 0, height: pageSize.height / 5),
                  help(data, 1, height: pageSize.height / 5),
                ]),
              ],
            )),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 16,
            height: 60,
            child: Card(
                elevation: 3,
                child: FlatButton(
                  shape: RoundedRectangleBorder(side: BorderSide(color:colorOne),borderRadius: BorderRadius.circular(4),),
                    onPressed: () {},
                    child: Text("Other",
                        style: TextStyle(fontSize: 20, color: colorOne)))),
          ),
          Spacer(), //edit this to avoid space
          Text("Immediate Help Required",
              style: TextStyle(
                  fontSize: 26, color: colorOne, fontWeight: FontWeight.bold)),
          SizedBox(
            height: (pageSize.height - pageSize.height * 0.4 - 24 - 60 - 230),
          )
        ]),
        Container(
            child: DraggableScrollableSheet(
                initialChildSize:
                    (pageSize.height - pageSize.height * 0.4 - 24 - 60 - 240) /
                        pageSize.height,
                minChildSize:
                    (pageSize.height - pageSize.height * 0.4 - 24 - 60 - 240) /
                        pageSize.height,
                maxChildSize: (pageSize.height - 55) / pageSize.height,
                builder: (context, _sC) {
                  if (true)
                    return Container(
                        padding: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            color: colorOne,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(rad),
                                topRight: Radius.circular(rad))),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8,12, 8, 0),
                                child: SingleChildScrollView(
                                   scrollDirection: Axis.vertical,
                                    controller: _sC,
                                    // gridDelegate:
                                    //     SliverGridDelegateWithFixedCrossAxisCount(
                                    //         crossAxisCount: 2,
                                    //         crossAxisSpacing: 16,
                                    //         mainAxisSpacing: 16,
                                    //         childAspectRatio: 2 / 3),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                immediate(immData, 1),
                                                immediate(immData, 2),
                                                immediate(immData, 0),
                                                immediate(immData, 3),
                                              ]),
                                        ),
                                        SizedBox(width: 16),
                                        Expanded(
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                immediate(immData, 3),
                                                immediate(immData, 1),
                                                immediate(immData, 2),
                                                immediate(immData, 1),
                                              ]),
                                        ),
                                      ],
                                    )),
                              ),
                            )
                          ],
                        ));
                  else
                    return Container();
                }))
      ]),
    ));
  }
}

var data = [
  {"icon": Icons.child_friendly, "title": "Orphanage"},
  {"icon": Icons.people, "title": "Old Age Home"},
  {"icon": Icons.book, "title": "Educate Poor"},
  {"icon": Icons.fastfood, "title": "Food for Hungry"},
];

var immData = [
  {
    "description":
        "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    "pic":
        "https://onelifehealthcare.in/wp-content/uploads/2017/11/kidney-failure.jpg"
  },
  {
    "description":
        "Have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    "pic":
        "https://c8.alamy.com/comp/B55GP6/orphan-boy-seen-here-at-the-manchester-orphanage-december-1953-1310d7472-B55GP6.jpg"
  },
  {
    "description":
        "The Batman of a page when looking at its layout. humour and the like).",
    "pic":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRVKwHvTCxOW6SPU7RBItNTE5gNijn48lMItlbwyoOMYNVbsK9d&usqp=CAU "
  },
  {
    "description":
        "It is a long established fact that a reader will be distracted by the readable content of like).",
    "pic":
        "https://onelifehealthcare.in/wp-content/uploads/2017/11/kidney-failure.jpg"
  },
];
