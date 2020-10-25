import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      new BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          blurRadius: 16.0,
                          offset: Offset(8.0, 8.0))
                    ],
                  ),
                  margin: EdgeInsets.only(top: 37),
                  child: Material(
                    elevation: 16,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Color.fromRGBO(18, 111, 177, 1),
                      child: CircleAvatar(
                        radius: 78,
                        backgroundImage:
                            AssetImage("assets/images/userface.png"),
                      ),
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: 25),
                child: Text(
                  "Ayşe İnce",
                  style: TextStyle(
                    fontSize: 43,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Isparta/Eğirdir",
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              Container(
                height: 45,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid)),
                margin: EdgeInsets.only(top: 30),
                child: RaisedButton(
                  padding: EdgeInsets.only(top: 5),
                  onPressed: () {
                    print("Butona 1 Kez Tıklandı");
                  },
                  child: Text(
                    "Update Profile",
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
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid)),
                margin: EdgeInsets.only(top: 30),
                child: RaisedButton(
                  padding: EdgeInsets.only(top: 5),
                  onPressed: () {
                    print("Butona 1 Kez Tıklandı");
                  },
                  child: Text(
                    "Update Password",
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
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    border: Border.all(
                        color: Colors.white,
                        width: 1.0,
                        style: BorderStyle.solid)),
                margin: EdgeInsets.only(top: 30),
                child: RaisedButton(
                  padding: EdgeInsets.only(top: 5),
                  onPressed: () {
                    print("Butona 1 Kez Tıklandı");
                  },
                  child: Text(
                    "Log Out",
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
            ],
          ),
        ),
      ),
    );
  }
}
