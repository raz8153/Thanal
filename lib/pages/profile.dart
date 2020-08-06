import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';



Map<int, Color> color = {
  50: Color.fromRGBO(164, 198, 57, .1),
  100: Color.fromRGBO(164, 198, 57, .2),
  200: Color.fromRGBO(164, 198, 57, .3),
  300: Color.fromRGBO(164, 198, 57, .4),
  400: Color.fromRGBO(164, 198, 57, .5),
  500: Color.fromRGBO(164, 198, 57, .6),
  600: Color.fromRGBO(164, 198, 57, .7),
  700: Color.fromRGBO(164, 198, 57, .8),
  800: Color.fromRGBO(164, 198, 57, .9),
  900: Color.fromRGBO(164, 198, 57, 1),
};
MaterialColor colorCustom = MaterialColor(0xff03b899, color);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // Define the default brightness and colors.

        primaryColor: colorCustom,
        accentColor: colorCustom,

        // Define the default font family.
        fontFamily: 'Roboto',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(
              color: Color(0xff03b899),
              fontSize: 23.0,
              fontWeight: FontWeight.bold),
          headline6: TextStyle(color: Color(0xff03b899), fontSize: 36.0),
          bodyText1: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(color: Color(0xff03b899), fontSize: 16.0),
        ),
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    

    double wm = (MediaQuery.of(context).size.width/100);
    double hm = (MediaQuery.of(context).size.height/133);
    debugPrint("$wm ");
    debugPrint("$hm");
    DonationCard donationCard;
    List<DonationCard> cardList = List<DonationCard>();
    List<String>.generate(25, (index) {
      donationCard =
          DonationCard("St.Joseph's Church", "27/06/2020", "\$"+(index+1).toString());
      cardList.add(donationCard);
    });

    TextStyle title = Theme.of(context).textTheme.headline1;
    TextStyle subtitle = Theme.of(context).textTheme.bodyText2;
    TextStyle cardtext = Theme.of(context).textTheme.bodyText1;
    Text printDonated() {
      return Text("You have donated \$100", style: subtitle);
    }

    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          title: Row(
            children: [
              Text(
                'Thanal',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto'),
              ),
              Text(
                'Donate',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Roboto'),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: Stack(
          children: [
            Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: hm*3.6),
                  CircleAvatar(
                    radius: 49,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius:48,
                      backgroundImage: NetworkImage(
                                    "https://i.imgflip.com/2xscjb.png")
                    )
                  ),
                  SizedBox(height: hm*0.4),
                  Container(
                    child: Text('Denin Paul', style: title),
                  ),
                  SizedBox(height: hm*0.4),
                  Container(
                    child: printDonated(),
                  ),
                  SizedBox(
                    height: hm*6,
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
                initialChildSize: 0.65,
                minChildSize: 0.65,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                      
                  return Container(
                    color: Colors.white,
                    child: Card(
                        elevation: 10,
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ListView.builder(
                          controller: scrollController,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return StickyHeader(
                                header: Container(
                                  
                                  color:Colors.white,
                                  width:double.infinity,
                            padding:
                                const EdgeInsets.only(top: 10, left: 20),
                            child: Text('Donation History', style: title),
                          ), 
                                content: Container(child: 
                                Column(children: [
                                  for(DonationCard cardDonation in cardList ) donationDetails(cardDonation),
                                ],)
                                ,)
                                
                                );
                              
                            })),
                  );
                })
          ],
        ));
  }
}

Widget donationDetails(
  DonationCard donationCard
) {
  return Padding(
    padding:
        const EdgeInsets.only(top: 5, left: 20, right: 20.0, bottom: 4.0),
    child: Container(
        height: 50.0,
        decoration: BoxDecoration(
            color: Color(0xff03b899),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(donationCard._place,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
                VerticalDivider(
                  color: Colors.white,
                  thickness: 1.0,
                ),
                Text(donationCard._date,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
                VerticalDivider(
                  color: Colors.white,
                  thickness: 1.0,
                ),
                Text(donationCard._amount,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400)),
              ]),
        )),
  );
}

class DonationCard {
  String _place, _date, _amount;
  String get place => _place;
  set place(String value) {
    this._place = value;
  }

  String get date => _date;
  set date(String value) {
    this._date = value;
  }

  String get amount => _amount;
  set amount(String value) {
    this._amount = value;
  }

  DonationCard(this._place, this._date, this._amount);
}
