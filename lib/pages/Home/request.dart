import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main()=>runApp(MaterialApp(
  home: Request(),
));

class Request extends StatefulWidget {
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  var _days=['1','2','3','5','6','7'];
  var _currentItem = '1';
  var _choice=['No','Yes'];
  var _currentchoice = 'No';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Request',
            style: TextStyle(
              fontFamily:'Poppins-Medium',
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(3, 184, 152, 1),
            ),
          ),
          centerTitle: true,
          elevation: 4.0,
          shadowColor: Color.fromRGBO(153, 153, 153, 1),

          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Color.fromRGBO(3, 184, 152, 1),
              onPressed: (){}
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(

              padding: EdgeInsets.fromLTRB(35.0, 30.0, 0.0, 0.0),
              child:Text('Description',
                style: TextStyle(
                  color: Color.fromRGBO(3, 184, 152, 1),
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(

              padding: EdgeInsets.fromLTRB(35.0, 60.0, 0.0, 0.0),
              child:Text('Explain in 2-3 sentences on what you are ',
                style: TextStyle(
                  color: Color.fromRGBO(3, 184, 152, 1),
                  fontFamily: 'Quicksand-VariableFont_wght',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
            Container(

              padding: EdgeInsets.fromLTRB(35.0, 80.0, 0.0, 0.0),
              child:Text('in short of',
                style: TextStyle(
                  color: Color.fromRGBO(3, 184, 152, 1),
                  fontFamily: 'Quicksand-VariableFont_wght',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
            Container(

                padding: EdgeInsets.fromLTRB(35.0, 100.0, 35.0, 0.0),
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextFormField(
                      maxLines: 7,
                      cursorColor: Color.fromRGBO(3, 184, 152, 1),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(

                        contentPadding: EdgeInsets.only(left: 10.0,top: 10.0),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(3, 184, 152, 1)),
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(3, 184, 152, 1)),
                            borderRadius: BorderRadius.circular(8.0)
                        ),

                      )
                  ),
                )
            ),
            Container(

              padding: EdgeInsets.fromLTRB(35.0, 255.0, 0.0, 0.0),
              child:Text('Time Period',
                style: TextStyle(
                  color: Color.fromRGBO(3, 184, 152, 1),
                  fontFamily: 'Poppins-Medium',
                  fontSize: 17.0,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35.0, 260.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text('Within which you want your',
                          style: TextStyle(
                            color: Color.fromRGBO(3, 184, 152, 1),
                            fontFamily: 'Quicksand-VariableFont_wght',
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 35.0),
                        child: Text('request fulfilled',
                          style: TextStyle(
                            color: Color.fromRGBO(3, 184, 152, 1),
                            fontFamily: 'Quicksand-VariableFont_wght',
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 100.0),
                  Container(
                    padding: EdgeInsets.only(top: 18.0),
                    child: DropdownButton<String>(
                      iconEnabledColor: Color.fromRGBO(3, 184, 152, 1),
                      iconDisabledColor: Color.fromRGBO(3, 184, 152, 1),
                      items: _days.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem,
                            style: TextStyle(color: Color.fromRGBO(3, 184, 152, 1)),
                          ),
                        );
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          this. _currentItem = newValue;
                        });
                      },
                      value: _currentItem,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text('days',
                        style: TextStyle(
                          color: Color.fromRGBO(3, 184, 152, 1),
                          fontFamily: 'Quicksand-VariableFont_wght',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      )),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(35.0, 285.0, 0.0, 0.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 40.0),
                      child:Text('Immediate Help Required?',
                        style: TextStyle(
                          color: Color.fromRGBO(3, 184, 152, 1),
                          fontFamily: 'Poppins-Medium',
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Container(
                      padding: EdgeInsets.only(top: 40.0),
                      child: DropdownButton<String>(

                        iconEnabledColor: Color.fromRGBO(3, 184, 152, 1),
                        iconDisabledColor: Color.fromRGBO(3, 184, 152, 1),
                        items: _choice.map((String dropDownString) {
                          return DropdownMenuItem<String>(
                            value: dropDownString,
                            child: Text(dropDownString,
                              style: TextStyle(color: Color.fromRGBO(3, 184, 152, 1)),
                            ),
                          );
                        }).toList(),
                        onChanged: (String newchoice) {
                          setState(() {
                            this. _currentchoice = newchoice;
                          });
                        },
                        value: _currentchoice,
                      ),
                    ),
                  ],
                )
            ),
            Container(

              padding: EdgeInsets.fromLTRB(35.0, 380.0, 0.0, 0.0),
              child:Text('Add Images',
                style: TextStyle(
                  color: Color.fromRGBO(3, 184, 152, 1),
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(

              padding: EdgeInsets.fromLTRB(35.0, 410.0, 0.0, 0.0),
              child:Text('Clear pictures showing what you are ',
                style: TextStyle(
                  color: Color.fromRGBO(3, 184, 152, 1),
                  fontFamily: 'Quicksand-VariableFont_wght',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
            Container(

              padding: EdgeInsets.fromLTRB(35.0, 425.0, 0.0, 0.0),
              child:Text('trying to communicate',
                style: TextStyle(
                  color: Color.fromRGBO(3, 184, 152, 1),
                  fontFamily: 'Quicksand-VariableFont_wght',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                    width: 130.0,
                    padding: EdgeInsets.only(left: 35.0,top: 450.0,bottom: 80.0),
                    child:GestureDetector(
                      onTap: () {},
                      child:Container(

                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://images.unsplash.com/photo-1583316174775-bd6dc0e9f298?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60')
                            ),
                            border: Border.all(
                                color: Color.fromRGBO(3, 184, 152, 1),
                                style: BorderStyle.solid,
                                width: 1.0
                            ),
                            borderRadius: BorderRadius.circular(7.0)
                        ),
                      ),
                    )
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0,top: 460.0,bottom: 110.0),
                  child: IconButton(
                      icon: Icon(

                        Icons.control_point,
                        color: Color.fromRGBO(3, 184, 152, 1),
                        size: 50.0,
                      ),
                      onPressed: () {}),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(35.0, 570.0, 25.0, 20.0),
              child: Material(

                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(3, 184, 152, 1),

                child: GestureDetector(

                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Submit Request',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins-Regular',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

