import 'package:flutter/material.dart';
import 'package:safe_deal/product_info.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_deal/profile.dart';
import 'package:safe_deal/sign_up.dart';
import 'package:safe_deal/splash_sreen.dart';
import 'package:safe_deal/update_product_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        textTheme: GoogleFonts.balooTammuduTextTheme(
          Theme.of(context).textTheme,
        ),

        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _openNavigation() {
    //bu kısımda navigation drawer i açıyoruz
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      Scaffold.of(context).openDrawer();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(136, 196, 239, 1),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Color.fromRGBO(136, 196, 239, 1),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      ///linear gradient için önce bi container oluşturulur ve sonra o container boxdecoretion verilir.boxdecoration un gradient özelliğine vereceğimiz linear gradient witget ı
      ///colors listesi alır bu listede ben üç renk koydum sırayla bu renkler takip edilir
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(136, 196, 239, 1),
          Color.fromRGBO(134, 175, 205, 1),
          Color.fromRGBO(226, 236, 246, 1)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).

            children: <Widget>[
              Container(
                //gölge vermek için container oluşturulur decoration a boxdecoration verilir ve boxshadadow ile gölge verilir.
                decoration: BoxDecoration(
                  boxShadow: [
                    new BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.16),
                        blurRadius: 16.0,
                        offset: Offset(8.0, 8.0))
                  ],
                ),
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("assets/images/safe_deal_logo.png",
                    width: 144, height: 144),
              ),
              Stack(
                //stack içine verilen widgetler üst üste biner positioned ile de bu üst üste bbinen widgetlerdan positioned içinde olan witget kaydırılır.
                children: [
                  Container(
                    width: 450,
                    height: 425,
                  ),
                  Positioned(
                      top: -80,
                      left: 155,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/phone_logo.png",
                            ),
                            iconSize: 80,
                          ))),
                  Positioned(
                      top: -40,
                      left: 250,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/camera.png",
                            ),
                            iconSize: 80,
                          ))),
                  Positioned(
                      top: 50,
                      left: 280,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/computer_logo.png",
                            ),
                            iconSize: 80,
                          ))),
                  Positioned(
                      top: 170,
                      left: 160,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/console.png",
                            ),
                            iconSize: 80,
                          ))),
                  Positioned(
                      top: 140,
                      left: 250,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/HEAD_PHONE.png",
                            ),
                            iconSize: 80,
                          ))),
                  Positioned(
                      top: 150,
                      left: 60,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/iron.png",
                            ),
                            iconSize: 80,
                          ))),
                  Positioned(
                      top: 25,
                      left: 135,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/plus2.png",
                            ),
                            iconSize: 122,
                          ))),
                  Positioned(
                      top: -40,
                      left: 60,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/tablet.png",
                            ),
                            iconSize: 80,
                          ))),
                  Positioned(
                      top: 50,
                      left: 30,
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              new BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.16),
                                  blurRadius: 16.0,
                                  offset: Offset(8.0, 8.0),
                                  spreadRadius: 2.0),
                            ],
                          ),
                          margin: EdgeInsets.only(top: 116),
                          child: IconButton(
                            icon: Image.asset(
                              "assets/images/white_goods.png",
                            ),
                            iconSize: 80,
                          ))),
                ],
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
