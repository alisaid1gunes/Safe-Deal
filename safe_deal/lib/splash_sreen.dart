import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  SplashScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: Center(
       child: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
             gradient: LinearGradient(colors: [
               Color.fromRGBO(136, 196, 239, 1),
               Color.fromRGBO(134, 175, 205, 1),
               Color.fromRGBO(226, 236, 246, 1)
             ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
         child:  Column(
           children: [Container(

             margin: EdgeInsets.only(top:225),
             child: Image.asset("assets/images/safe_deal_logo.png",
                 width: 217, height: 217),
           ),],
         )
         )
       ),
   );
  }
}