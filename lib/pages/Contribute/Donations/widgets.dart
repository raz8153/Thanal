import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color colorOne = Color.fromRGBO(3, 184, 152, 1);
Color colorTwo = Colors.white;

Widget help(var data, int index, {double height = 150}) {
  return Expanded(
    child: SizedBox(
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(side: BorderSide(color:colorOne),borderRadius: BorderRadius.circular(12),),
        elevation: 3,
        child: FlatButton(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                data[index]["icon"],
                size: 60,
                color: colorOne,
              ),
              SizedBox(height: 20),
              Text(data[index]["title"],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 19, color: colorOne))
            ],
          ),
          onPressed: () {},
        ),
      ),
    ),
  );
}

Widget immediate(var data, int index) {
  return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Container(
              height: 160,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(data[index]["pic"]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ))),
          Container(
              decoration: BoxDecoration(
                  color: colorTwo,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
              padding: EdgeInsets.all(9),
              child: Text(
                data[index]["description"],
                softWrap: true,
              )),
        ],
      )

      // height: 300,
      // child: Column(
      //   children: <Widget>[
      //     Container(
      //       height: 160,
      //       decoration:BoxDecoration(
      //         image:DecorationImage(
      //           image: NetworkImage(data[index]["pic"]),fit: BoxFit.cover,),
      //           borderRadius: BorderRadius.only(topRight:Radius.circular(15),topLeft:Radius.circular(15),)
      //       )
      //     ),
      //     Flexible(
      //               child: Container(
      //                 decoration: BoxDecoration(
      //                   color: colorTwo,
      //                   borderRadius:BorderRadius.only(bottomRight:Radius.circular(15),bottomLeft:Radius.circular(15),)
      //                 ),
      //         height: 200,
      //         padding:EdgeInsets.all(4),
      //           child:
      //           Text(data[index]["description"],softWrap: true,)
      //         ),
      //     )
      //   ],
      // ),
      );
}
