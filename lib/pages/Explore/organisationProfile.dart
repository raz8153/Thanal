

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

// void main() {

//   runApp(MaterialApp(
//     home: OrgProf(),
//   ));
// }

class OrgProf extends StatefulWidget {

  @override
  _OrgProfState createState() => _OrgProfState();
}

class _OrgProfState extends State<OrgProf> with SingleTickerProviderStateMixin {
TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

bool isSwitched = false;
UserData user_data = UserData(img: 'images/messi.jpg',pending: "I can swallow a bottle of alcohol and I'll feel like Godzilla Better hit the deck like the card dealer My whole squad's in here, walking around the party A cross between a zombie apocalypse ",completed: "if you get in my way, I'ma feed you to the monster (yeah)I'm normal during the day, but at night, turn to a monster (yeah) When the moon shines like Ice Road Truckers I look like a villain outta those blockbusters Godzilla, fire spitter, monster Blood on the dance floor, and on the Louis V carpet Fire, Godzilla, fire, monster Blood on the dance floor,and on the Louis V carpet",
  name: 'Leo Messi Foundation ',received: '4000.0 Rs',donated: '0.0 Rs',pen_percent:70.00,com_percent:100.0,req_pending:"I'm a space bound rocket ship and your heart's the moonAnd I'm aiming right at you Right at you Two hundred fifty thousand miles on a clear night in June And I'm aiming right at you",req_completed:"'ll do whatever it takes, when I'm with you I get the shakes My body aches when I ain't With you I have zero strength There's no limit on how far I would go No boundaries no lengths");
List<Pending_Img> pending = [
   Pending_Img(url: 'images/nj.jpg'),
   Pending_Img(url: 'images/weeknd.jpg'),
   Pending_Img(url: 'images/nj.jpg'),
   Pending_Img(url: 'images/weeknd.jpg'),
];
List<Completed_Img> completed = [
   Completed_Img(url: 'images/score.jpg'),
   Completed_Img(url: 'images/wcmt.jpg'),
   Completed_Img(url: 'images/score.jpg'),
   Completed_Img(url: 'images/wcmt.jpg'),
];
  @override
  Widget build(BuildContext context) {
     
    var ctheight = MediaQuery.of(context).size.height;
    return Scaffold(

      appBar: AppBar(backgroundColor: Colors.tealAccent[700]),    
       body: 
      Container(             
          color: Colors.white,
                 child: Column(
              children:<Widget>[
              SizedBox(height:10),
              Center(child: CircleAvatar(
                radius:46,
                backgroundColor: Colors.tealAccent[700],
                            child: CircleAvatar(
                 backgroundColor: Colors.black, 
                backgroundImage: AssetImage(user_data.img),
                 radius: 44.0,
                ),
              ),),
              SizedBox(height:7),
              Center(child: Text(user_data.name,style: TextStyle(color:Colors.tealAccent[700],fontSize: 23,fontWeight: FontWeight.bold),),),
                SizedBox(height:5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Column(
                         children: <Widget>[
                        Text('Total Recieved:',style: TextStyle(color:Colors.tealAccent[700],fontSize: 14),),
                        Text(user_data.received,style: TextStyle(color:Colors.tealAccent[700],fontSize:20)),
                      ],
                      ),
                   
                  SizedBox(width:26),
               
                Column(children: <Widget>[
                       Text('Total Donated:',style: TextStyle(color:Colors.tealAccent[700],fontSize: 14)),
                        Text(user_data.donated,style: TextStyle(color:Colors.tealAccent[700],fontSize: 20,)),
                    ],),
                  
                  ],),
                SizedBox(height:15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                       onTap: (){},
                       child: Container(
                        height: 35,
                        width: 160,
                        decoration: BoxDecoration(
                       
                          color: Colors.tealAccent[700],
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text('Donation History',style:TextStyle(color: Colors.white,fontSize: 15)),                  
                        ),
                      ),
                    ),
                    SizedBox(width:5),
                       GestureDetector(
                       onTap: (){},
                       child: Container(
                        height: 35,
                        width: 160,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width:1,
                            color:Colors.tealAccent[700],
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text('Contact Us',style:TextStyle(color: Colors.tealAccent[700],fontSize: 15)),                  
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:10),
        new Container(
  height: 40,
  child: new TabBar(
    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
    labelStyle: TextStyle(fontWeight:  FontWeight.bold,),
    indicatorColor: Colors.tealAccent[700],
    controller: _controller,
    tabs: [
        new Tab(
         
          child:Text('GIVEAWAYS',style: TextStyle(color:Colors.tealAccent[700]),),
        ),
        new Tab(
         
    child: Text('REQUESTS',style: TextStyle(color:Colors.tealAccent[700])),
        ),
    ],
  ),
),

  new Container(
  
   height: ctheight-370,
  
    child: new TabBarView(
  
      controller: _controller,
  
      children: <Widget>[
  
     //CONTAINER 1
  
     //
  
       SingleChildScrollView(
         scrollDirection: Axis.vertical,
                child: Container(
  
             //    height: 700,
  
                 child: Column(
  
                  children: <Widget>[
  
                    //
  
                    //CONTAINER 1 INSIDE TAB GIVEAWAYS
  
                    SizedBox(height:10),
  
                    Container(
  
                      padding: EdgeInsets.fromLTRB(12,20,12,10),
  
                      width: 400,
  
                      height: 320,
  
                      decoration: BoxDecoration(
  
                        borderRadius: BorderRadius.circular(7),
  
                        boxShadow:  [
  
                          BoxShadow(
  
                      color: Colors.black54,
  
                      blurRadius: 10.0,
  
                    )],
  
                    color: Colors.white),
  
                   child: Column(
  
                     children: <Widget>[
  
                       Row(
  
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                         children: <Widget>[
  
                           Text('Pending',style: TextStyle(color:Colors.tealAccent[700],fontWeight:FontWeight.bold,fontSize:16),),
  
                           Icon(Icons.menu),
  
                        
  
                       ],),
  
                       SizedBox(height:10),
  
                       Text(user_data.pending),
  
                       SizedBox(height:10),
  
                      Container(
  
                         decoration: BoxDecoration(
  
                           borderRadius:BorderRadius.circular(10),
  
                         ),
  
                          height: 105.0,
  
                          child: ListView.builder(
  
                            shrinkWrap: true,
  
                            itemCount: pending.length,
  
                            scrollDirection: Axis.horizontal,
  
                            itemBuilder: (BuildContext context, int index){
  
                              return Column(
  
                                children: <Widget>[
  
                                  Container(
  
                                    padding: EdgeInsets.symmetric(horizontal:5),
  
                                    decoration: BoxDecoration(
  
                                      
  
                                      borderRadius: BorderRadius.circular(60),
  
                                    ),
  
                                    height: 90.0,
  
                                    width: 140.0,
  
                                    child: ClipRRect(
  
                                      borderRadius: BorderRadius.circular(10),
  
                                      child: Image(
  
                                      image: AssetImage(pending[index].url,),fit: BoxFit.cover,),
  
                                    ),
  
                                       ),
  
                                        ]
  
                                        );}
  
                       ),
  
                   ),
  
                     
  
                     Row(
  
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                       children: <Widget>[
  
                         Row(
  
                           children: <Widget>[
  
                             Icon(Icons.chat,color: Colors.tealAccent[700],),
  
                             SizedBox(width:3),
  
                             Text('2',style: TextStyle(color:Colors.tealAccent[700]),),
  
                             
  
                           ],
  
                         ),
  
                         Text('20 min ago',style: TextStyle(color:Colors.grey[600]),),
  
                       ],
  
                     ),
  
             
  
                     Row(
  
                       mainAxisAlignment: MainAxisAlignment.end,
  
                       children:<Widget>[
  
                        Text('Found someone to give away?',style: TextStyle(color:Colors.tealAccent[700],fontSize: 15),),
  
                        Switch(value: isSwitched, onChanged: (value){
  
                          setState(() {
  
                            isSwitched = value;
  
                            print(isSwitched);
  
                          });
  
                        },
  
                        activeTrackColor: Colors.tealAccent[700],
  
                        activeColor: Colors.white,
  
                        )
  
                       ]
  
                     )
  
                                    ]
  
                   ),
  
                    ),// con1 inside tab
  
                   //
  
                   //CONTAINER 2 INSIDE TAB GIVEAWAY
  
                    SizedBox(height:10),
  
                    Container(
  
                      padding: EdgeInsets.fromLTRB(12,20,12,20),
  
                      width: 400,
  
                      height: 350,
  
                      decoration: BoxDecoration(
  
                        borderRadius: BorderRadius.circular(7),
  
                        boxShadow:  [
  
                          BoxShadow(
  
                      color: Colors.black54,
  
                      blurRadius: 10.0,
  
                    )],
  
                    color: Colors.white),
  
                   child: Column(
  
                     children: <Widget>[
  
                       Row(
  
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                         children: <Widget>[
  
                           Text('Completed',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:16),),
  
                           Icon(Icons.menu),
  
                        
  
                       ],),
  
                       SizedBox(height:10),
  
                       Text(user_data.completed),
  
                       SizedBox(height:10),
  
                      Container(
  
                         decoration: BoxDecoration(
  
                           borderRadius:BorderRadius.circular(10),
  
                         ),
  
                          height: 105.0,
  
                          child: ListView.builder(
  
                            shrinkWrap: true,
  
                            itemCount: completed.length,
  
                            scrollDirection: Axis.horizontal,
  
                            itemBuilder: (BuildContext context, int index){
  
                              return Column(
  
                                children: <Widget>[
  
                                  Container(
  
                                    padding: EdgeInsets.symmetric(horizontal:7),
  
                                    decoration: BoxDecoration(
  
                                      
  
                                      borderRadius: BorderRadius.circular(60),
  
                                    ),
  
                                    height: 90.0,
  
                                    width: 140.0,
  
                                    child: ClipRRect(
  
                                      borderRadius: BorderRadius.circular(10),
  
                                      child: Image(
  
                                      image: AssetImage(completed[index].url,),fit: BoxFit.cover,),
  
                                    ),
  
                                       ),
  
                                        ]
  
                                        );}
  
                       ),
  
                   ),
  
  
  
                          Row(
  
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                       children: <Widget>[
  
                         Row(
  
                           children: <Widget>[
  
                             Icon(Icons.chat,color: Colors.tealAccent[700],),
  
                             SizedBox(width:3),
  
                             Text('2',style: TextStyle(color:Colors.tealAccent[700]),),
  
                             
  
                           ],
  
                         ),
  
                         Text('20 min ago',style: TextStyle(color:Colors.grey[600]),),
  
                       ],
  
                     ),              ]
  
                   ),
  
                    )
  
                  ],
  
                 ),
  
               
  
             ),
       ),
  
      // ),//con 1
  
      //
  
      //CONTAINER 2
  
           SingleChildScrollView(
             scrollDirection: Axis.vertical,
                        child: Container(
              
      //        height: 700,
                 
  
                 child: Column(
  
                  children: <Widget>[
  
                    //
  
                    //CONTAINER 1 INSIDE TAB REQUESTS
  
                    SizedBox(height:10),
  
                    Container(
  
                      padding: EdgeInsets.fromLTRB(12,20,12,10),
  
                      width: 400,
  
                      height: 220,
  
                      decoration: BoxDecoration(
  
                        borderRadius: BorderRadius.circular(7),
  
                        boxShadow:  [
  
                          BoxShadow(
  
                      color: Colors.black54,
  
                      blurRadius: 10.0,
  
                    )],
  
                    color: Colors.white),
  
                   child: Column(
  
                     children: <Widget>[
  
                       Row(
  
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                         children: <Widget>[
  
                           Text('Pending',style: TextStyle(color:Colors.tealAccent[700],fontWeight:FontWeight.bold,fontSize:16),),
  
                           Icon(Icons.menu),
  
                        
  
                       ],),
  
                       SizedBox(height:10),
  
                       Text(user_data.req_pending),
  
                       SizedBox(height:10),
                       LinearPercentIndicator(
                         padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width - 180,
                      animation: true,
                     trailing: Text("  ${user_data.pen_percent.toString()}% Completed",style: TextStyle(color: Colors.tealAccent[700],fontWeight: FontWeight.bold),),
                     lineHeight: 20.0,
                     animationDuration: 2500,
                     percent: user_data.pen_percent/100,
                     
                     linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.tealAccent[700],
              ),
              SizedBox(height:10),
  
                  //     Container(
  
                  //        decoration: BoxDecoration(
  
                  //          borderRadius:BorderRadius.circular(10),
  
                  //        ),
  
                  //         height: 105.0,
  
                  //         child: ListView.builder(
  
                  //           shrinkWrap: true,
  
                  //           itemCount: pending.length,
  
                  //           scrollDirection: Axis.horizontal,
  
                  //           itemBuilder: (BuildContext context, int index){
  
                  //             return Column(
  
                  //               children: <Widget>[
  
                  //                 Container(
  
                  //                   padding: EdgeInsets.symmetric(horizontal:5),
  
                  //                   decoration: BoxDecoration(
  
                                      
  
                  //                     borderRadius: BorderRadius.circular(60),
  
                  //                   ),
  
                  //                   height: 90.0,
  
                  //                   width: 140.0,
  
                  //                   child: ClipRRect(
  
                  //                     borderRadius: BorderRadius.circular(10),
  
                  //                     child: Image(
  
                  //                     image: AssetImage(pending[index].url,),fit: BoxFit.cover,),
  
                  //                   ),
  
                  //                      ),
  
                  //                       ]
  
                  //                       );}
  
                  //      ),
  
                  //  ),
  
                     
  
                     Row(
  
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                       children: <Widget>[
  
                         Row(
  
                           children: <Widget>[
  
                             Icon(Icons.chat,color: Colors.tealAccent[700],),
  
                             SizedBox(width:3),
  
                             Text('2',style: TextStyle(color:Colors.tealAccent[700]),),
  
                             
  
                           ],
  
                         ),
  
                         Text('20 min ago',style: TextStyle(color:Colors.grey[600]),),
  
                       ],
  
                     ),
  
             
  
                    //  Row(
  
                    //    mainAxisAlignment: MainAxisAlignment.end,
  
                    //    children:<Widget>[
  
                    //     Text('Found someone to give away?',style: TextStyle(color:Colors.tealAccent[700],fontSize: 15),),
  
                    //     Switch(value: isSwitched, onChanged: (value){
  
                    //       setState(() {
  
                    //         isSwitched = value;
  
                    //         print(isSwitched);
  
                    //       });
  
                    //     },
  
                    //     activeTrackColor: Colors.tealAccent[700],
  
                    //     activeColor: Colors.white,
  
                    //     )
  
                    //    ]
  
                    //  )
  
                                    ]
  
                   ),
  
                    ),// con1 inside tab
  
                   //
  
                   //CONTAINER 2 INSIDE TAB REQUESTS
  
                    SizedBox(height:10),
  
                    Container(
  
                      padding: EdgeInsets.fromLTRB(12,20,12,20),
  
                      width: 400,
  
                      height: 220,
  
                      decoration: BoxDecoration(
  
                        borderRadius: BorderRadius.circular(7),
  
                        boxShadow:  [
  
                          BoxShadow(
  
                      color: Colors.black54,
  
                      blurRadius: 10.0,
  
                    )],
  
                    color: Colors.white),
  
                   child: Column(
  
                     children: <Widget>[
  
                       Row(
  
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                         children: <Widget>[
  
                           Text('Completed',style: TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:16),),
  
                           Icon(Icons.menu),
  
                        
  
                       ],),
  
                       SizedBox(height:10),
  
                       Text(user_data.req_completed),
  
                       SizedBox(height:10),
                         LinearPercentIndicator(
                         padding: EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width - 180,
                      animation: true,
                     trailing: Text("  ${user_data.com_percent.toString()}% Completed",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                     lineHeight: 20.0,
                     animationDuration: 2500,
                     percent: user_data.com_percent/100,
                     
                     linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.black54,
              ),
              SizedBox(height:10),  
                  //     Container(
  
                  //        decoration: BoxDecoration(
  
                  //          borderRadius:BorderRadius.circular(10),
  
                  //        ),
  
                  //         height: 105.0,
  
                  //         child: ListView.builder(
  
                  //           shrinkWrap: true,
  
                  //           itemCount: completed.length,
  
                  //           scrollDirection: Axis.horizontal,
  
                  //           itemBuilder: (BuildContext context, int index){
  
                  //             return Column(
  
                  //               children: <Widget>[
  
                  //                 Container(
  
                  //                   padding: EdgeInsets.symmetric(horizontal:7),
  
                  //                   decoration: BoxDecoration(
  
                                      
  
                  //                     borderRadius: BorderRadius.circular(60),
  
                  //                   ),
  
                  //                   height: 90.0,
  
                  //                   width: 140.0,
  
                  //                   child: ClipRRect(
  
                  //                     borderRadius: BorderRadius.circular(10),
  
                  //                     child: Image(
  
                  //                     image: AssetImage(completed[index].url,),fit: BoxFit.cover,),
  
                  //                   ),
  
                  //                      ),
  
                  //                       ]
  
                  //                       );}
  
                  //      ),
  
                  //  ),
  
  
  
                          Row(
  
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                       children: <Widget>[
  
                         Row(
  
                           children: <Widget>[
  
                             Icon(Icons.chat,color: Colors.tealAccent[700],),
  
                             SizedBox(width:3),
  
                             Text('2',style: TextStyle(color:Colors.tealAccent[700]),),
  
                             
  
                           ],
  
                         ),
  
                         Text('20 min ago',style: TextStyle(color:Colors.grey[600]),),
  
                       ],
  
                     ),              ]
  
                   ),
  
                    )
  
                  ],
  
                 ),
  
               
  
             ),
           ),
  
             
  
                                ]//wid tab
  
               ),
  
                ),

               
          ])//wid col
    
    ),
     // ),//cont
    
    );//sc
  }
}

class UserData{
  String img;
  String pending;
  String completed;
  String name;
  String received;
  String donated;
  String req_pending;
  String req_completed;
  double pen_percent;
  double com_percent;
 
  UserData({this.img,this.pending,this.completed,this.name,this.received,this.donated,this.req_pending,this.req_completed,this.pen_percent,this.com_percent});
}

class Pending_Img{
  String url;
  Pending_Img({this.url});
}
class Completed_Img{
  String url;
  Completed_Img({this.url});
}

// List<String> name = [
//   'Eminem',
// ];

// List<String> userimg = [
//   'images/eminem.jpg',
// ];
 
// List<String> pendata = [
//   'Eminem',
// ];

// List<String> comdata = [
//   'Eminem',
// ];

// List<String> penimg = [
//   'Eminem',
// ];

// List<String> comimg = [
//   'Eminem',
// ];