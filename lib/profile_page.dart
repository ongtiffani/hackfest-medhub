import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medhub/main.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4743FF),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.only(top: 190.0, left: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back,
                    color: Colors.white,),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MyNavBar()));
                    }),
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.person_pin,
                        color: Colors.white,),
                        iconSize: 100,
                        onPressed: null),
                    Text.rich(TextSpan(
                        text: 'Dia Piezas',
                        style: TextStyle(
                            fontFamily: 'NeulisAlt',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 36.0)))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 0),
          Container(
            height: MediaQuery.of(context).size.height - 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)),
            ),
            child: ListView(
                primary: false,
                padding: EdgeInsets.only(
                    left: 36.0, right: 25.0, top: 36.0, bottom: 10.0),
                children: <Widget>[
                  Text.rich(TextSpan(
                      text: 'My Prescription History',
                      style: TextStyle(
                          fontFamily: 'NeulisAlt',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0))),
                  Padding(
                      padding: EdgeInsets.only(top: 10.0, right: 5.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 600.0,
                          child: ListView(children: [
                            _buildMedItem(
                                'Tergecef®', '+'),
                            _buildMedItem(
                                'AmoClav®', '+'),
                          ]))),
                  Text.rich(TextSpan(
                      text: 'My Buddies',
                      style: TextStyle(
                          fontFamily: 'NeulisAlt',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22.0))),
                  Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 700.0,
                          child: ListView(children: [
                            _buildMedItem('Corrine Tean', ''),
                            _buildMedItem('Add Buddy', '+'),
                          ]))),
                  Text.rich(TextSpan(
                      text: 'A Buddy is someone you can order for on their behalf.',
                      style: TextStyle(
                          fontFamily: 'NeulisAlt',
                          color: Colors.black,
                          fontSize: 14.0))),
                  SizedBox(height: 30,)
                ]),
          ),
        ]));
  }
}


Widget _buildMedItem(String medName, String buyDate) {
  return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: 300.0,
                height: 72.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(medName,
                          style: TextStyle(
                              fontFamily: 'NeulisAlt',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 30.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(buyDate,
                              style: TextStyle(
                                fontFamily: 'NeulisAlt',
                                fontSize: 15.0,
                                color: Colors.grey[800],
                              )),
                        ],
                      ),
                    ]))
          ]));
}
