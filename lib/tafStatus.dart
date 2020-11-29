import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF4743FF),
        body: ListView(children: [
          Padding(
            padding: EdgeInsets.only(top: 200.0, left: 32.0),
            child: Row(
              children: <Widget>[
                Text.rich(TextSpan(
                    text: 'Orders',
                    style: TextStyle(
                        fontFamily: 'NeulisAlt',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 36.0)))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 100.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(40.0)),
            ),
            child: ListView(
                primary: false,
                padding: EdgeInsets.only(
                    left: 25.0, right: 25.0, top: 36.0, bottom: 10.0),
                children: <Widget>[
                  Text.rich(TextSpan(
                      text: 'Ongoing Orders',
                      style: TextStyle(
                          fontFamily: 'NeulisAlt',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0))),
                  Padding(
                      padding: EdgeInsets.only(top: 10.0, right: 5.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 600.0,
                          child: ListView(children: [
                            _buildMedItem(
                                'Biogesic®\nOrder in transit', '24 Nov'),
                            _buildMedItem(
                                'Tylenol®\nOrder processing', '24 Nov'),
                          ]))),
                  Text.rich(TextSpan(
                      text: 'Completed Orders',
                      style: TextStyle(
                          fontFamily: 'NeulisAlt',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0))),
                  Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height - 700.0,
                          child: ListView(children: [
                            _buildMedItem('Solmux®\nOrder Complete', '17 Apr'),
                            _buildMedItem('Alvedon®\nOrder Complete', '21 Mar'),
                            _buildMedItem('Bioflu®\nOrder Complete', '18 Jan'),
                            _buildMedItem('Tylenol®\nOrder Complete', '15 Dec'),
                          ]))),
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
