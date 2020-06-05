import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_first_mobile_app/IntroductionPage.dart';

void main() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
      runApp(MyApp());
    });
    WidgetsFlutterBinding.ensureInitialized();

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(    
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroductionPage(),
    );
  }
}


// Center(
//         child: GestureDetector(
//           child: Container(
//             height: 100,
//             width: 100,
//             color: color,
//           ),
//           onTap: () {
//             setState(() {
//               color = Colors.black;
//             });            
//           },
//           onDoubleTap: () {
//             setState(() {
//               color = Colors.yellow;
//             }); 
//           },
//           onLongPress: () {
//             setState(() {
//               color = Colors.blue;
//             });
//           },
//         ),    
//       ) ,
// class MyApp extends StatelessWidget{
  
//   @override
//   Widget build(BuildContext context) {
//     Color color = Colors.red;
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('MWONE'),
//           leading: Text('data'),
//         ),
//         body: Center(
//           child:  GestureDetector(
//             child: Container(
//               height: 100,
//               width: 100,
//               color: color,
//             ),
//             onTap: () {
             
//             },
//             onDoubleTap: () {
//               print("BOSS");
//             },
//           ) 
//         )
//       ),
//     );
//   }
// }


 
