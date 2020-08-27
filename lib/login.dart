import 'package:flutter/material.dart';
import 'package:C19warrior/textfeild.dart';

class Entrypage extends StatefulWidget {
  @override
  _EntrypageState createState() => _EntrypageState();
}

class _EntrypageState extends State<Entrypage>
    with SingleTickerProviderStateMixin {
  AnimationController animcontrller;
  Animation<double> animation;

  String firstname;
  String lastname;
  int contactnumber;
  String emailid;
  String password;
  String additional;
  bool _autoValidate = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildfirstnamefeild() {
    return Material(
        child: TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.person,
          color: Colors.red,
        ),
        hintText: "\t\t\tFirst Name",
        border: InputBorder.none,
      ),
      validator: validateName,
      onSaved: (String value) {
        firstname = value;
      },
    ));
  }

  Widget _buildcontactnumberfeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.red,
          ),
          hintText: "\t\t\tContact number",
          border: InputBorder.none,
        ),
        validator: validateLastNamemail,
        onSaved: (String value) {
          lastname = value;
        },
      ),
    );
  }

  Widget _buildlastnamefeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.red,
          ),
          hintText: "\t\t\tLast Name",
          border: InputBorder.none,
        ),
        validator: validateLastNamemail,
        onSaved: (String value) {
          emailid = value;
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
          Icons.person,
          color: Colors.red,
        ),
        hintText: "\t\t\tEmail ID",
        border: InputBorder.none,
      ),
      validator: validateEmail,
      onSaved: (String value) {
        password = value;
      },
    ));
  }

  Widget _buildpasswordfeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.red,
          ),
          hintText: "\t\t\tPassword",
          border: InputBorder.none,
        ),
        validator: (String value) {
          Pattern pattern =
              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
          RegExp regex = new RegExp(pattern);

          if (value.isEmpty)
            return "please enter the required feild";
          else if (value.length < 9)
            return "password must be more than or equal to 8 digits";
          else if (!regex.hasMatch(value))
            return "hello";
          else
            return "fuck off";
        },
        onSaved: (String value) {
          password = value;
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

  Widget _buildagefeild() {
    return Material(
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Colors.red,
          ),
          hintText: "\t\t\tage",
          border: InputBorder.none,
        ),
        validator: validateEmail,
        onSaved: (String value) {
          additional = value;
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animcontrller = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );
    animation = Tween<double>(begin: 0, end: -500).animate(animcontrller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: <Widget>[
        Container(
          height: 900,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFFFFF),
                  Color(0xFFFF1744),
                ]),
          ),
          child: SafeArea(
              child: Form(
            key: _formKey,
            autovalidate: _autoValidate,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 2),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/newworld.png"))),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              'assets/images/circle.png',
                            ),
                            backgroundColor: Colors.white,
                          ),
                          Transform.translate(
                            offset: Offset(animation.value, 90.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  height: 441,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                  child: Column(children: <Widget>[
                                    Container(
                                        child: Column(children: <Widget>[
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Material(
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/images/pngfuel.com-3.png",
                                              height: 20,
                                              color: Colors.redAccent,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Register",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),

                                      Textfeildcontainer(
                                        child: _buildfirstnamefeild(),
                                      ),

                                      SizedBox(
                                        height: 50,
                                      ),
                                      Textfeildcontainer(
                                        child: _buildlastnamefeild(),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Textfeildcontainer(
                                        child: _buildemailidfeild(),
                                      ),

// SizedBox(

//   height: 20,
// ),
// Textfeildcontainer(

//               child: _buildemailidfeild(),

// ),
// SizedBox(

//   height: 20,
// ),Textfeildcontainer(

//               child: _buildpasswordfeild(),

// ),
// SizedBox(

//   height: 20,
// ),
                                    ])),
                                  ]),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 1),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 20),
                                  height: 441,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                  child: Column(children: <Widget>[
                                    Container(
                                        child: Column(children: <Widget>[
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Material(
                                        color: Colors.white,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              "assets/images/pngfuel.com-3.png",
                                              height: 20,
                                              color: Colors.redAccent,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Register",
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),

                                      Textfeildcontainer(
                                        child: _buildfirstnamefeild(),
                                      ),

                                      SizedBox(
                                        height: 50,
                                      ),
                                      Textfeildcontainer(
                                        child: _buildlastnamefeild(),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Textfeildcontainer(
                                        child: _buildemailidfeild(),
                                      ),

// SizedBox(

//   height: 20,
// ),
// Textfeildcontainer(

//               child: _buildemailidfeild(),

// ),
// SizedBox(

//   height: 20,
// ),Textfeildcontainer(

//               child: _buildpasswordfeild(),

// ),
// SizedBox(

//   height: 20,
// ),
                                    ])),
                                  ]),
                                ),
                              ]),
                            ),
                          ),
                          SizedBox(
                            height: 105,
                          ),
                          RaisedButton(
                            onPressed: () {
                              _validateInputs();

                              print(firstname);
                              print(lastname);
                              print(contactnumber);
                              print(emailid);
                              print(additional);
                              print(password);
                              animcontrller.forward();
                            },
                            elevation: 20.0,
                            hoverColor: Colors.orange,
                            colorBrightness: Brightness.light,
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              size: 35.0,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                            splashColor: Colors.red[100],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ]),
    ));
  }

  String validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
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

  String validateLastNamemail(String value) {
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

  @override
  void dispose() {
    animcontrller.dispose();
    super.dispose();
  }
}
