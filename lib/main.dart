import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: MyHomePage(title: 'WONE APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 Color color = Colors.deepOrange;
 

 void listEntier(){
   for (var i = 0; i < 100; i++) {
     Text(i.toString());
   }
 }

  @override
  Widget build(BuildContext context) { 
    Color colorIcon = Colors.white;
    List<int>entier = [1,2,3,4];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.android, color: Colors.white),
        title: Text(
          'MWONE',
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
        ],
      ),
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


 
