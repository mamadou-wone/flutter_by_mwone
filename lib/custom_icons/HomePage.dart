import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/twitter_icons_icons.dart';
import 'package:my_first_mobile_app/custom_libraries/Commun.dart';


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
      body:Padding (
        padding: EdgeInsets.only(top:200),
        child: Column(
        children: <Widget>[
          Text("MWONE"),
          builSeparator(MediaQuery.of(context).size.width),
          Text("BOSS"),
        ],
        ),
      )       
    );
  }
}