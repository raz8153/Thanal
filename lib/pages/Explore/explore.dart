import 'package:flutter/material.dart';

import '../common.dart';

// void main() {
//   runApp(MaterialApp(
//     home: Explore(),
//   ));
// }

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
   
  @override
  Widget build(BuildContext context) {
    var ctwidth = MediaQuery.of(context).size.width;
    return Scaffold(
          body: Container(
         color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children:<Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(20,0,20,0),
                height: 180.0,
               width: 500.0,
              color: Colors.tealAccent[700],
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 SizedBox(height:40),
                Text('  Explore',textAlign:TextAlign.start,style: TextStyle(fontSize: 30,color: Colors.white,fontFamily:"Poppins",fontWeight: FontWeight.bold,)),
                SizedBox(height:10),
                TextField(
                          decoration: InputDecoration(
                             enabledBorder: new OutlineInputBorder(
                             borderSide: BorderSide(color:Colors.white),  
                             borderRadius: const BorderRadius.all(
                             const Radius.circular(40.0),
        ),
      ),
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.tealAccent[700],
                          prefixIcon: Icon(Icons.search,color: Colors.white,size: 25,),
                          hintText: "Search", 
                          hintStyle: TextStyle(color: Colors.white,fontFamily: "Poppins",fontSize: 20),                       
                        ),
                      ),
                                  ],
          ),
             ),
        SizedBox(height:10),        
        Container(
          padding: EdgeInsets.only(left:20),
          child: Text('Featured',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color:Colors.tealAccent[700]
        ))
          ),            
           Container(
                  height: 165.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index){
                      return Column(
                        children: <Widget>[
                          Container(
                            height: 130.0,
                            width: 150.0,
                            child: Image(
                            image: AssetImage('images/house.png',),fit: BoxFit.fitHeight,),
                               ), ]);}
               ),
           ),
         Container(
           padding: EdgeInsets.only(left:20),
           child: Row(
             children: <Widget>[
               Text('Around You',style:TextStyle(fontSize: 17,color:Colors.tealAccent[700],fontWeight:FontWeight.bold)),
               SizedBox(width:ctwidth*0.6),
               Icon(Icons.edit_location,color: Colors.tealAccent[700]
              ,),         

         ],
           ),   
         ),
        
        Container(
          padding: EdgeInsets.only(left:20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: 8,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index){
                      return Row(
                        children: <Widget>[
             ClipRRect(
            borderRadius: BorderRadius.circular(20.0),//or 15.0
            child: Container(
              padding: EdgeInsets.only(top:10),
              height: 70,
              width: 70,
              child: Image.asset('images/building.jpg',fit: BoxFit.cover,)),

),
SizedBox(width:10),

Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
        Text("St.Joseph's",style:TextStyle(color:Colors.tealAccent[700]
      ,fontSize: 15,fontWeight: FontWeight.bold),),
         Row(
            children: <Widget>[
                  Icon(Icons.location_searching,size: 12,color: Colors.tealAccent[700]
                ,),
                  SizedBox(width:5),
                  Text("Old Age Explore",style:TextStyle(color:Colors.black,fontSize: 12),),
                  ],
                ),
          Row(
            children: <Widget>[
                  Icon(Icons.edit_location,size: 12,color: Colors.tealAccent[700]
                ,),
                  SizedBox(width:5),
                  Text("Near Some Junction",style:TextStyle(color:Colors.black,fontSize: 12),),
                  ],
                ),       
                ],
),

                            ]
                               );
                               }
                 ),
           ),
           ]//widget
           )//col
        )//scv
      ),//cont
    );//scaff
  }
}