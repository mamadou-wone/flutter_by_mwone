import 'package:flutter/material.dart';
import 'package:my_first_mobile_app/custom_icons/twitter_icons_icons.dart';
import 'package:my_first_mobile_app/custom_libraries/Commun.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomAppBar.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomBottomBar.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomSmallButton.dart';
import 'package:my_first_mobile_app/custom_widgets/CustomText.dart';
import 'package:my_first_mobile_app/custom_widgets/MoviePreview.dart';

class HomePage extends StatefulWidget {
  // MyHomePage({Key key, this.title}) : super(key: key);
  // final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      // key: _scaffoldKey,
      appBar: CustomAppBar(
          context: context,
          widthScreen: screenWidth,
          heightScreen: screenHeigth),
      body: ListView(
        children: <Widget>[
           MoviePreview(
                  heightScreen: screenHeigth,
                  widthScreen: screenWidth,
                  movieId: 2, 
                  movieTitle: "Whatssap", 
                  movieDate: "", 
                  movieDescription: "Un film sur Whatssap", 
                  movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
                  movieScore: "7.5", 
                  movieCategorie: [],
                  scaffoldKey: null),
                    builSeparator(screenWidth),
                   MoviePreview(
                  heightScreen: screenHeigth,
                  widthScreen: screenWidth,
                  movieId: 2, 
                  movieTitle: "Whatssap", 
                  movieDate: "", 
                  movieDescription: "Un film sur Whatssap", 
                  movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
                  movieScore: "7.5", 
                  movieCategorie: [],
                  scaffoldKey: null),
                    MoviePreview(
                  heightScreen: screenHeigth,
                  widthScreen: screenWidth,
                  movieId: 2, 
                  movieTitle: "Whatssap", 
                  movieDate: "", 
                  movieDescription: "Un film sur Whatssap", 
                  movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
                  movieScore: "7.5", 
                  movieCategorie: [],
                  scaffoldKey: null),
                    builSeparator(screenWidth),
                   MoviePreview(
                  heightScreen: screenHeigth,
                  widthScreen: screenWidth,
                  movieId: 2, 
                  movieTitle: "Whatssap", 
                  movieDate: "", 
                  movieDescription: "Un film sur Whatssap", 
                  movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
                  movieScore: "7.5", 
                  movieCategorie: [],
                  scaffoldKey: null),
                    MoviePreview(
                  heightScreen: screenHeigth,
                  widthScreen: screenWidth,
                  movieId: 2, 
                  movieTitle: "Whatssap", 
                  movieDate: "", 
                  movieDescription: "Un film sur Whatssap", 
                  movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
                  movieScore: "7.5", 
                  movieCategorie: [],
                  scaffoldKey: null),
                    builSeparator(screenWidth),
                   MoviePreview(
                  heightScreen: screenHeigth,
                  widthScreen: screenWidth,
                  movieId: 2, 
                  movieTitle: "Whatssap", 
                  movieDate: "", 
                  movieDescription: "Un film sur Whatssap", 
                  movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
                  movieScore: "7.5", 
                  movieCategorie: [],
                  scaffoldKey: null),
                    MoviePreview(
                  heightScreen: screenHeigth,
                  widthScreen: screenWidth,
                  movieId: 2, 
                  movieTitle: "Whatssap", 
                  movieDate: "", 
                  movieDescription: "Un film sur Whatssap", 
                  movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
                  movieScore: "7.5", 
                  movieCategorie: [],
                  scaffoldKey: null),
                    builSeparator(screenWidth),
                   MoviePreview(
                  heightScreen: screenHeigth,
                  widthScreen: screenWidth,
                  movieId: 2, 
                  movieTitle: "Whatssap", 
                  movieDate: "", 
                  movieDescription: "Un film sur Whatssap", 
                  movieImage: "pngtree-whatsapp-icon-png-image_3584844.jpg",
                  movieScore: "7.5", 
                  movieCategorie: [],
                  scaffoldKey: null),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(
          context: context,
          heightScrenn: screenHeigth,
          widthScreen: screenWidth),
    );
  }
}
