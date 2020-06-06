import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/twitter_icons_icons.dart';


class HomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Center(
        child: Container(
          child: Icon(Icons.access_alarm),
        ),
      )
    );
  }
}