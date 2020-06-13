// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// class MoviePreview extends StatefulWidget{
//   final double heightScreen;
//   final double widthScreen;
//   final String movieId;
//   final String movieTitle;
//   final String movieDate;
//   final String movieDescription;
//   final String movieImage;
//   final String movieScore;
//   final List movieCategorie;
//   final GlobalKey<ScaffoldState> scaffoldKey;

//   final double imgWidth = 0.3;
//   final double imgHeight = 0.2;
//   final double infoWidth = 0.7;
//   final double infoPadding = 0.01;

//   MoviePreview({
//     @required this.heightScreen,
//     @required this.widthScreen,
//     @required this.movieId,
//     @required this.movieTitle,
//     @required this.movieDate,
//     @required this.movieDescription,
//     @required this.movieImage,
//     @required this.movieScore,
//     @required this.movieCategorie,
//     @required this.scaffoldKey
//   });
  
//   @override
//   _MoviePreview createState() => _MoviePreview();
// }

// //On Définit un Etat de la classe MoviPreview
// class _MoviePreview extends State<MoviePreview>{
//   bool _isFovoride = true;
//   bool _showDescription = false;
//   int _numberLineDescription = 1;

//   GlobalKey _containerInfoKey = new GlobalKey();
//   GlobalKey _bottomInfoKey = new GlobalKey();
//   GlobalKey _topInfoKey = new GlobalKey();

//   Size getSize(GlobalKey key){
//     if (key.currentContext != null) {
//       final RenderBox render = key.currentContext.findRenderObject();
//       final size = render.size;
//     }else{
//       return Size.zero;
//     }
//   }

//   @override 
//   void setState(fn) {
//    if (mounted) {
//      super.setState(fn);
//    }  
//   }

//   int calculateNumberLineDescription(){
//     double containerHeight = getSize(_containerInfoKey).height;
//     double bottomInfoHeight = getSize(_bottomInfoKey).height;
//     double topInfoHeight = getSize(_topInfoKey).height;

//     double restHeight = containerHeight - (bottomInfoHeight + topInfoHeight);

//     return (restHeight / 20).floor();
//   }

// @override 
// void initState() {
//     super.initState();

//     WidgetsBinding.instance.addPostFrameCallback((_) async{
//       setState(() {
//         _numberLineDescription = calculateNumberLineDescription();
//         _showDescription = true;
//       });
//     });
//   }

//   // Widget moviePoster(){
//   //   double imgHight = widget.imgHeight * widget.heightScreen;
//   //   double imgWidth = imgHight / 1.5;

//   //   return GestureDetector(
//   //     child: CachedNetworkImage(
//   //       imageUrl: 
//   //     ),
//   //   );
//   // }



// }