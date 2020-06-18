import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_first_mobile_app/custom_icons/twitter_icons_icons.dart';

class CustomTwitterBottomBar extends StatefulWidget{
   final BuildContext context;
  final double heightScrenn;
  final double widthScreen;
  final double
      appBarHeight; //Coeficient que je définit pour calculer la hauteur en fonction de l'ecran
  final double appBarWidth;
  final double appBarIconHeigth;
  final double appBarBorderHeigth; //Hauteur de ma séparation

  CustomTwitterBottomBar(
      {@required this.context,
      @required this.heightScrenn,
      @required this.widthScreen,
      this.appBarHeight = 0.09,
      this.appBarWidth = 1,
      this.appBarIconHeigth = 0.04,
      this.appBarBorderHeigth = 0.01});

  @override 
  _CustomTwitterBottomBar createState() => _CustomTwitterBottomBar();

    
}

class _CustomTwitterBottomBar extends State<CustomTwitterBottomBar>{


 @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }


  Widget buildTopBorder() {
    return Container(
      height: widget.heightScrenn * widget.appBarBorderHeigth,
      width: widget.widthScreen * widget.appBarWidth,
      color: Colors.grey[300],
    );
  }

 Widget buildIconsRow() {
    double rowHeight = widget.heightScrenn * widget.appBarHeight - widget.heightScrenn * widget.appBarBorderHeigth;   
    double iconSize = widget.heightScrenn * widget.appBarIconHeigth;
    Color corlorIcon = Colors.blue;

    Color colorIconSearchBottomBar = Colors.grey[600];
    Color colorIconHomeBottomBar =  Colors.grey[600];
    Color colorIconNotifBottomBar =  Colors.grey[600];
    Color colorIconMailBottomBar =  Colors.grey[600];
    return Container(
      color: Colors.white,
      width: widget.widthScreen * widget.appBarWidth,
      height: rowHeight,
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Alignement equitable
        crossAxisAlignment: CrossAxisAlignment.start, //Alignement en haut
        children: <Widget>[
          IconButton(
            iconSize: iconSize,
            color: corlorIcon,
            icon: Icon(TwitterIcons.home),
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          IconButton(
            iconSize: iconSize,
            color: corlorIcon,
            icon: Icon(TwitterIcons.search),
            onPressed: () {
              Navigator.pushNamed(context, "/home");
               print("Boss");
            },
          ),
          IconButton(
            iconSize: iconSize,
            color: corlorIcon,
            icon: Icon(TwitterIcons.notifications_none),
            onPressed: () {
              print('Third click');
            },
          ),
          IconButton(
            iconSize: iconSize,
            color: corlorIcon,
            icon: Icon(TwitterIcons.mail),
            onPressed: () {
              print('Third click');
            },
          ),
        ],
      ),
    );
  }

   @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.heightScrenn * widget.appBarHeight,
      width: widget.widthScreen * widget.appBarWidth,
      child: Column(
        children: <Widget>[
          buildTopBorder(),
          buildIconsRow(),
        ],
      ),
    );
  }

}