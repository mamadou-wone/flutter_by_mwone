import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/twitter_icons_icons.dart';

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
    Image imageOne;
    if (airplaneMode) {
      plane = Icon(Icons.airplanemode_active);
      title = "BOSS";
      navColor = Colors.red;
      imageOne =  Image.asset("assets/#1.jpg",width: 100, height: 100,);
      
    }else{
      plane = Icon(Icons.airplanemode_inactive) ;
      title =  "MWONE";
      navColor = Colors.white;
    }
    Color colorIcon = Colors.white;
    List<int>entier = [1,2,3,4];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navColor,
        leading: Icon(TwitterIcons.twitter , color: Colors.blue,),
        title: Text(
         title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
       actions: <Widget>[
         GestureDetector(
           child: Icon(TwitterIcons.brightness_7 , color: Colors.blue,),
           onTap: () {
             print('Boss');
           },
         ),
       ],
      ),
      body:ListView(  
        children: <Widget>[
          Image.asset("assets/#1.jpg",width: 100, height: 100,),
          // Text(entier[1].toString()),
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
          ),
        ],
      ),
      floatingActionButton: FlatButton(
        child: Icon(TwitterIcons.flash_on),
        onPressed: () {
          Navigator.pushNamed(context, "/home");
        },
      ),
    );
  }
}