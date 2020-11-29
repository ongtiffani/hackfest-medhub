import 'package:flutter/material.dart';
import 'package:medhub/home_page.dart';
import 'package:medhub/tafReminders.dart';
import 'package:medhub/tafHomePage.dart';
import 'package:medhub/tafStatus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),);
      // debugShowCheckedModeBanner: false
  }
}

class MyNavBar extends StatefulWidget {
  MyNavBar({Key key}) : super(key: key);

  @override
  _MyNavBar createState() => _MyNavBar();
}

class _MyNavBar extends State<MyNavBar> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    Reminders(),
    MainPage(),
    Status(),
  ];

  void _onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onTappedBar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check),
              label: ('Reminders'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ('Home'),
                backgroundColor: Color(0xFF4743ff)),
            BottomNavigationBarItem(
                icon: Icon(Icons.pending_actions),
                label: ('Status'),
                backgroundColor: Color(0xFF4743ff)),
          ],
          selectedItemColor: Colors.blue[100],
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xFF4743ff),
        ));
  }
}
