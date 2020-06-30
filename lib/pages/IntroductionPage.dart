import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/icon_pack_icons.dart';

class IntroductionPage extends StatefulWidget {
  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: GestureDetector(
            child: FloatingActionButton(
      child: Icon(IconPack.fuel),
      onPressed: () {
        Navigator.pushReplacementNamed(context, "/home");
      },
    )));
  }
}
