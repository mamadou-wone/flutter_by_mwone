import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/car_sales_icons.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomAppBar.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomBottomBar.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomTwitterBottomBar.dart';


class ProfilPage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
   final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(
          context: context,
          widthScreen: screenWidth,
          heightScreen: screenHeigth),
      body: Center(
        child: Icon(CarSales.person_outline, size: 100, color: Colors.yellow[600],),
      ),
      bottomNavigationBar: CustomBottomBar(
          context: context,
          heightScrenn: screenHeigth,
          widthScreen: screenWidth),
    );
  }
}
