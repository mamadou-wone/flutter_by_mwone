import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_mobile_app/pages/AdPage.dart';
import 'package:my_first_mobile_app/pages/HomePage.dart';
import 'package:my_first_mobile_app/pages/IntroductionPage.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return PageTransition(
                child: IntroductionPage(), type: PageTransitionType.fade);
            break;
          case "/home":
            return PageTransition(
                child: HomePage(), type: PageTransitionType.fade);
            break;
          case "/adPage":
            return PageTransition(
                child: AddPage(), type: PageTransitionType.downToUp);
            break;
          default:
            return null;
        }
      },
    );
  }
}
