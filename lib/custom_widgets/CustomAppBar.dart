import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/twitter_icons_icons.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final BuildContext context;
  final double heightScreen;
  final double widthScreen;
  final double appBarHeight;
  final double appBarWidth;
  final double appBarLogoHidth;
  final double appBarIconHeight;

  CustomAppBar({
    @required this.context,
    @required this.widthScreen,
    @required this.heightScreen,
    this.appBarHeight = 0.05,
    this.appBarWidth = 1,
    this.appBarLogoHidth = 0.028,
    this.appBarIconHeight = 0.028
  });

  @override
  Widget build(BuildContext context) {
    double logoSize = this.heightScreen * this.appBarLogoHidth;
    double iconSize = this.heightScreen * this.appBarIconHeight;

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: true,
      title: Icon(TwitterIcons.twitter,
        size: logoSize,
        color: Colors.blue,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(TwitterIcons.brightness_7),
          iconSize: iconSize,
          onPressed: (){
            print('settings');
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size(widthScreen * appBarWidth, heightScreen * appBarHeight);

  
}