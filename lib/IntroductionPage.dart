import 'package:flutter/material.dart';

class IntroductionPage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
 Color color = Colors.deepOrange;
 Color navColor;
bool  airplaneMode = false;
String title;


 void listEntier(){
   for (var i = 0; i < 100; i++) {
     Text(i.toString());
   }
 }

  @override
  Widget build(BuildContext context) { 
    Icon plane;
    if (airplaneMode) {
      plane = Icon(Icons.airplanemode_active);
      title = "BOSS";
      navColor = Colors.red;
    }else{
      plane = Icon(Icons.airplanemode_inactive) ;
      title =  "MWONE";
      navColor = Colors.blue;
    }
    Color colorIcon = Colors.white;
    List<int>entier = [1,2,3,4];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navColor,
        leading: Icon(Icons.android, color: Colors.white),
        title: Text(
         title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
       actions: <Widget>[
         GestureDetector(
           child: Icon(Icons.settings , color: colorIcon,),
           onTap: () {
             print('Boss');
           },
         ),
       ],
      ),
      body:ListView(  
        children: <Widget>[
          Text(entier[1].toString()),
          Center(
            child: FloatingActionButton(
              child: plane,
              backgroundColor: navColor,
              onPressed: () {
               setState(() {
                 airplaneMode = !airplaneMode;
               });
              },
            ),
          )
        ],
      ),
    );
  }
}