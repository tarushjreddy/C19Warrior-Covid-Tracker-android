import 'package:C19warrior/settings.dart';
import 'package:C19warrior/userlogin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'revaling.dart';
import 'certificate.dart';
import 'dart:io';
import 'dart:async';

import 'package:path_provider/path_provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class annimations extends StatefulWidget {
  @override
  _annimationsState createState() => _annimationsState();
}

class _annimationsState extends State<annimations>
    with SingleTickerProviderStateMixin {
  bool _visible = true;
  bool _visi = false;
  bool _visu = false;
  DateTime selectedDate = DateTime.now();
  var customFormat = DateFormat('dd-MM-yyyy');

  ScrollController _controller;

  String meassage;
  String firstname;
  String lastname;
  String contactnumber;
  String emailid;
  String password;
  String additional;
  String username;
  String pincode;
  String confirmpassword;

  bool _autoValidate = false;
  bool _autoValidate1 = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  Future<Null> showPicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1947),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Widget _buildfirstnamefeild() {
    return Material(
        child: TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.person,
          color: Colors.blue,
        ),
        hintText: "\t\t\tFirst Name ",
        border: InputBorder.none,
      ),
      validator: validateName,
      onSaved: (String value) {
        firstname = value;
      },
    ));
  }

  Widget _buildlastnamefeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          hintText: "\t\t\tLast Name",
          border: InputBorder.none,
        ),
        validator: validateLastName,
        onSaved: (String value) {
          lastname = value;
        },
      ),
    );
  }

  Widget _buildusernamefeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.verified_user,
            color: Colors.red,
          ),
          hintText: "\t\t\tusername",
          border: InputBorder.none,
        ),
        validator: validateuserName,
        onSaved: (String value) {
          username = value;
        },
      ),
    );
  }

  Widget _buildemailidfeild() {
    return Material(
        child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.purple,
        ),
        hintText: "\t\t\tEmail ID",
        border: InputBorder.none,
      ),
      validator: validateEmail,
      onSaved: (String value) {
        emailid = value;
      },
    ));
  }

  Widget _buildpasswordfeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.yellow,
          ),
          hintText: "\t\t\tPassword",
          border: InputBorder.none,
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return "please enter the required feild";
          }
        },
        onSaved: (String value) {
          password = value;
        },
      ),
    );
  }

  Widget _buildconfirmpasswordfeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.red,
          ),
          hintText: "\t\t\tConfirm Password",
          border: InputBorder.none,
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return "please enter the required feild";
          }
        },
        onSaved: (String value) {
          confirmpassword = value;
        },
      ),
    );
  }

  Widget _buildadditionalfeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.red,
          ),
          hintText: "\t\t\tAdditional Data",
          border: InputBorder.none,
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return "please enter the required feild";
          }
        },
        onSaved: (String value) {
          additional = value;
        },
      ),
    );
  }

  Widget _buildpincodefeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.vpn_key,
            color: Colors.brown,
          ),
          hintText: "\t\t\tArea Pincoode",
          border: InputBorder.none,
        ),
        validator: validatepincode,
        onSaved: (String value) {
          pincode = value;
        },
      ),
    );
  }

  Widget _buildcontactnumberfeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          focusColor: Colors.green,
          icon: Icon(
            Icons.phone_android,
            color: Colors.green,
          ),
          hintText: "\t\t\tContact Number",
          border: InputBorder.none,
        ),
        validator: validatecontactnumber,
        onSaved: (String value) {
          contactnumber = value;
        },
      ),
    );
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);

    super.initState();
  }

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        meassage = "reach the bottom";
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        meassage = "reach the top";
      });
    }
  }

  _moveUp() {
    _controller.animateTo(_controller.offset + 375,
        curve: Curves.linear, duration: Duration(milliseconds: 400));
  }

  _moveDown() {
    _controller.animateTo(_controller.offset + 90,
        curve: Curves.linear, duration: Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFFFF1744),
                      ]),
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage("assets/images/newworld.png"))),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/circle.png',
                      ),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        controller: _controller,
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: 37),
                            Form(
                              key: _formKey,
                              autovalidate: _autoValidate,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                height: 500,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(45),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 38),
                                      blurRadius: 24,
                                      color: kShadowColor,
                                    ),
                                  ],
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 30,
                                      ),
                                      _buildusernamefeild(),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      _buildfirstnamefeild(),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      _buildlastnamefeild(),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      _buildcontactnumberfeild(),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      _buildpasswordfeild(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 74,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              height: 500,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: SingleChildScrollView(
                                child: Form(
                                  key: _formKey1,
                                  autovalidate: _autoValidate1,
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(
                                        height: 30,
                                      ),
                                      _buildpincodefeild(),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      _buildemailidfeild(),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      _buildconfirmpasswordfeild(),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      Text(
                                          "Pleas click the icon to select DOB"),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RaisedButton(
                                        onPressed: () => showPicker(context),
                                        elevation: 20.0,
                                        color: Colors.white,
                                        colorBrightness: Brightness.light,
                                        child: Icon(
                                          Icons.calendar_today,
                                          size: 15.0,
                                          color: Colors.orange,
                                        ),
                                        padding: EdgeInsets.all(15.0),
                                        shape: CircleBorder(),
                                        splashColor: Colors.green[100],
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        '${customFormat.format(selectedDate)}',
                                        style: TextStyle(fontSize: 22),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 74,
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 0),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
                              height: 500,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Respected User \n Thank You for downoading this application. By clicking this btton you will be accepting al the terms and conditions and validating the details entered and please do check if there is any error in the details entered\n\t\t- Tarush J. Reddy",
                                    style: GoogleFonts.italianno(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Image.asset(
                                        "assets/images/arrow.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RaisedButton(
                                        onPressed: () {
                                          _validateInputs1();
                                          _validateInputs();
                                          print(firstname);
                                          print(lastname);
                                          print(contactnumber);
                                          print(
                                              '${customFormat.format(selectedDate)}');
                                          print(password);
                                          print(username);
                                          setState(() {
                                            _visible = !_visible;
                                            _visi = !_visi;
                                            _visu = !_visu;
                                          });
                                        },
                                        elevation: 20.0,
                                        color: Colors.white,
                                        colorBrightness: Brightness.light,
                                        child: Icon(
                                          Icons.save,
                                          size: 35.0,
                                        ),
                                        padding: EdgeInsets.all(15.0),
                                        shape: CircleBorder(),
                                        splashColor: Colors.red,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Visibility(
                                    visible: _visu,
                                    child: Text(
                                      "Please click the button bellow to \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tprocede",
                                      style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 90,
                                      ),
                                      Visibility(
                                        visible: _visi,
                                        child: RaisedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Information(
                                                  info: username,
                                                  infotwo: lastname,
                                                  infothree: firstname,
                                                  infofour: contactnumber,
                                                  infofive: password,
                                                  infoseven: emailid,
                                                  infoeight: pincode,
                                                  infonine: customFormat
                                                      .format(selectedDate),
                                                  infosix: confirmpassword,
                                                ),
                                              ),
                                            );
                                          },
                                          elevation: 20.0,
                                          color: Colors.white,
                                          colorBrightness: Brightness.light,
                                          child: Icon(
                                            Icons.keyboard_arrow_right,
                                            size: 35.0,
                                          ),
                                          padding: EdgeInsets.all(15.0),
                                          shape: CircleBorder(),
                                          splashColor: Colors.red,
                                        ),
                                      ),
                                      // Image.asset(
                                      //   "assets/images/thank.png",
                                      //   height: 50,
                                      //   width: 50,
                                      // ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 90)
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Visibility(
                      visible: _visible,
                      child: RaisedButton(
                        onPressed: () {
                          // print(username);
                          // settings(
                          //     // uid: omsairam,
                          //     );
                          _moveUp();
                          // Navigator.push(
                          //   context,
                          //   RevealRoute(
                          //     page: DetailPage(
                          //       storage: Storage(),
                          //     ),
                          //     maxRadius: 800,
                          //     centerAlignment: Alignment.center,
                          //   ),
                          // );
                        },
                        elevation: 30.0,
                        color: Colors.white,
                        colorBrightness: Brightness.light,
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        splashColor: Colors.red[100],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  String validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  String validatepincode(String value) {
    if (value.length < 7) return 'pincode must be 8 digits ';
    if (value.length > 8)
      return 'it must be equal to 8';
    else
      return null;
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validateLastName(String value) {
    Pattern pattern = r'.';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  void _validateInputs1() {
    if (_formKey1.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey1.currentState.save();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate1 = true;
      });
    }
  }

  String validateuserName(String value) {
    Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Invalid username';
    else if (value.length < 5)
      return 'please enter more';
    else
      return null;
  }
}

String validatecontactnumber(String value) {
  if (value.length < 3)
    return 'Name must be more than 2 charater';
  else
    return null;
}

class Certificatepage extends StatefulWidget {
  @override
  _CertificatepageState createState() => _CertificatepageState();
}

class _CertificatepageState extends State<Certificatepage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
