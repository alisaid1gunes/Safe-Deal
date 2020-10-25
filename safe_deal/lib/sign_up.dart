import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _showPassword = false;

  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

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
          child: SingleChildScrollView(
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
                      decoration: InputDecoration(
                        hintText: "Name",
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
                      decoration: InputDecoration(
                        hintText: "Surname",
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
                Row(
                  children: [
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
                      margin: EdgeInsets.only(top: 20, left: 50, right: 20),
                      width: 147,
                      height: 46,
                      child: Material(
                        elevation: 16,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Province",
                            contentPadding: EdgeInsets.only(top: 5, left: 20),
                            border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(18, 111, 177, 1),
                                  width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(18, 111, 177, 1),
                                  width: 3),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(18, 111, 177, 1),
                                  width: 3),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Colors.pinkAccent, width: 3),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(18, 111, 177, 1),
                                  width: 3),
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
                      width: 147,
                      height: 46,
                      child: Material(
                        elevation: 16,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "District",
                            contentPadding: EdgeInsets.only(top: 5, left: 20),
                            border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(18, 111, 177, 1),
                                  width: 3),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(18, 111, 177, 1),
                                  width: 3),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(18, 111, 177, 1),
                                  width: 3),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Colors.pinkAccent, width: 3),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(18, 111, 177, 1),
                                  width: 3),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
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
                      decoration: InputDecoration(
                        hintText: "Birth Date",
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
                      decoration: InputDecoration(
                        hintText: "Phone Number",
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
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Email",
                        contentPadding: EdgeInsets.only(left: 20),
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
                      obscureText: !_showPassword,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 5, left: 20),
                        hintText: "Password",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _togglevisibility();
                          },
                          child: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Color.fromRGBO(18, 111, 177, 1)),
                        ),
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
                  margin: EdgeInsets.only(top: 30),
                  child: RaisedButton(
                    padding: EdgeInsets.only(top: 5),
                    onPressed: () {
                      print("Butona 1 Kez Tıklandı");
                    },
                    child: Text(
                      "Sign Up",
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
                  margin: EdgeInsets.only(top: 30),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                        ),
                        Text('or'),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              color: Colors.black,
                              thickness: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 111, bottom: 30),
                      child: Image.asset("assets/images/facebook.png",
                          width: 48, height: 48),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 100, bottom: 30),
                      child: Image.asset("assets/images/google.png",
                          width: 48, height: 48),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
