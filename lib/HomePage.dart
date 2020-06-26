import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/car_sales_icons.dart';
import 'package:my_first_mobile_app/custom_libraries/Commun.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomAppBar.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomBottomBar.dart';
import 'package:my_first_mobile_app/custom_widgets/MoviePreview.dart';

import 'custom_widgets/CustomTwitterBottomBar.dart';

class HomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;
  // @boss

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: ListView(
        children: <Widget>[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset("assets/boss.jpg"),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text("Audi A8"),
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Image.asset("assets/audi.jpg"),
                ],
              ),
            ),
          ),
          builSeparator(screenWidth),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset("assets/boss.jpg"),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text("Audi A8"),
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Image.asset("assets/audi.jpg"),
                ],
              ),
            ),
          ),
          builSeparator(screenWidth),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset("assets/boss.jpg"),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text("Audi A8"),
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Image.asset("assets/audi.jpg"),
                ],
              ),
            ),
          ),
          builSeparator(screenWidth),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: Image.asset("assets/boss.jpg"),
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      Text("Audi A8"),
                    ],
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Image.asset("assets/audi.jpg"),
                ],
              ),
            ),
          ),
        ],
      ),
      //  ListView(
      //   children: <Widget>[
      //      MoviePreview(
      //             heightScreen: screenHeigth,
      //             widthScreen: screenWidth,
      //             movieId: 2,
      //             movieTitle: "Whatssap",
      //             movieDate: "",
      //             movieDescription: "Un film sur Whatssap",
      //             movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
      //             movieScore: "7.5",
      //             movieCategorie: [],
      //             scaffoldKey: null),
      //               builSeparator(screenWidth),
      //              MoviePreview(
      //             heightScreen: screenHeigth,
      //             widthScreen: screenWidth,
      //             movieId: 2,
      //             movieTitle: "Whatssap",
      //             movieDate: "",
      //             movieDescription: "Un film sur Whatssap",
      //             movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
      //             movieScore: "7.5",
      //             movieCategorie: [],
      //             scaffoldKey: null),
      //   ],
      // ),
      bottomNavigationBar: CustomBottomBar(
          context: context,
          heightScrenn: screenHeigth,
          widthScreen: screenWidth),
    );
  }
}
