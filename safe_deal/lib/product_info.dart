import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductInfo extends StatefulWidget {
  ProductInfo({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
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
          child: Column(
            children: [
              Container(
                height: 160,
                width: 160,
                margin: EdgeInsets.only(top: 44),
                child: Stack(children: [
                  Container(
                    height: 160,
                    width: 160,
                  ),
                  Positioned(
                    height: 160,
                    width: 160,
                    child: Card(
                      shape: CircleBorder(),
                      elevation: 8,
                      color: Color.fromRGBO(136, 196, 239, 1).withOpacity(0),
                      shadowColor:
                          Color.fromRGBO(136, 196, 239, 1).withOpacity(0.5),
                      child: CircularProgressIndicator(
                        value: 0.5,
                        strokeWidth: 6.0,
                        valueColor: AlwaysStoppedAnimation(
                            Color.fromRGBO(255, 72, 0, 1)),
                        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 60,
                      left: 10,
                      child: Container(
                          width: 135,
                          alignment: Alignment.center,
                          child: Text(
                            "360 Gün ",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          )))
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 332,
                height: 67,
                child: Card(
                  elevation: 16,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "IPHONE X",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 332,
                height: 101,
                child: Card(
                  elevation: 16,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 13),
                        alignment: Alignment.center,
                        child: Text(
                          "Fatura Kesim Tarihi : 03.07.2018",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Son Kullanım Tarihi : 03.07.2020",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 80,
                margin: EdgeInsets.only(top: 10),
                width: 332,
                child: Card(
                  elevation: 16,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 5),
                        width: 184,
                        child: Text(
                          "Kategori:",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70),
                        child: Image.asset("assets/images/phone_logo.png",
                            width: 50, height: 50),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 240,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid)),
                margin: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  padding: EdgeInsets.only(top: 5),
                  onPressed: () {
                    print("Butona 1 Kez Tıklandı");
                  },
                  child: Text(
                    "Garanti Belgesini Görüntüle",
                    style: TextStyle(fontSize: 17),
                  ),
                  textColor: Colors.white,
                  color: Color.fromRGBO(18, 111, 177, 1),
                  elevation: 16,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid)),
                margin: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  padding: EdgeInsets.only(top: 5),
                  onPressed: () {
                    print("Butona 1 Kez Tıklandı");
                  },
                  child: Text(
                    "Fatura Belgesini Görüntüle",
                    style: TextStyle(fontSize: 17),
                  ),
                  textColor: Colors.white,
                  color: Color.fromRGBO(18, 111, 177, 1),
                  elevation: 16,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
