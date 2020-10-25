import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UpdateProductInfo extends StatefulWidget {
  UpdateProductInfo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _UpdateProductInfoState createState() => _UpdateProductInfoState();
}

class _UpdateProductInfoState extends State<UpdateProductInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
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
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      new BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          blurRadius: 16.0,
                          offset: Offset(8.0, 8.0))
                    ],
                  ),
                  margin: EdgeInsets.only(top: 50),
                  width: 135,
                  height: 135,
                  child: Material(
                    elevation: 16,
                    shape: CircleBorder(),
                    child: Image.asset("assets/images/camera.png",
                        width: 50, height: 50),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      new BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          blurRadius: 16.0,
                          offset: Offset(8.0, 8.0))
                    ],
                  ),
                  margin: EdgeInsets.only(top: 60),
                  width: 314,
                  height: 46,
                  child: Material(
                    elevation: 16,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: TextFormField(
                      initialValue: "IPHONE X",
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, left: 20),
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide:
                              BorderSide(color: Colors.pinkAccent, width: 3),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      new BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          blurRadius: 16.0,
                          offset: Offset(8.0, 8.0))
                    ],
                  ),
                  margin: EdgeInsets.only(top: 20),
                  width: 314,
                  height: 46,
                  child: Material(
                    elevation: 16,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: TextFormField(
                      initialValue: "PHONE",
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, left: 20),
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide:
                              BorderSide(color: Colors.pinkAccent, width: 3),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      new BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          blurRadius: 16.0,
                          offset: Offset(8.0, 8.0))
                    ],
                  ),
                  margin: EdgeInsets.only(top: 20),
                  width: 314,
                  height: 46,
                  child: Material(
                    elevation: 16,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: TextFormField(
                      initialValue: "03.07.2018",
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, left: 20),
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide:
                              BorderSide(color: Colors.pinkAccent, width: 3),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      new BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          blurRadius: 16.0,
                          offset: Offset(8.0, 8.0))
                    ],
                  ),
                  margin: EdgeInsets.only(top: 20),
                  width: 314,
                  height: 46,
                  child: Material(
                    elevation: 16,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: TextFormField(
                      initialValue: "0.3.07.2020",
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, left: 20),
                        border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide:
                              BorderSide(color: Colors.pinkAccent, width: 3),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                              color: Color.fromRGBO(18, 111, 177, 1), width: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.solid)),
                  margin: EdgeInsets.only(top: 45),
                  child: RaisedButton(
                    padding: EdgeInsets.only(top: 5),
                    onPressed: () {
                      print("Butona 1 Kez Tıklandı");
                    },
                    child: Text(
                      "Update",
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
      ),
    );
  }
}
