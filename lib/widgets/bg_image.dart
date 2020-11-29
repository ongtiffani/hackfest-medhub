import 'package:flutter/material.dart';

class HomePageBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/log_in_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class MainPageBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/main_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProfileBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/profile_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}