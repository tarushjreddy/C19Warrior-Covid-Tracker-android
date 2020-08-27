import 'package:C19warrior/revaling.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page01.dart';
import 'settings.dart';
import 'myheader.dart';
import 'package:C19warrior/userlogin.dart';

class Information extends StatefulWidget {
  final String info;
  final String infotwo;
  final String infothree;
  final String infofour;
  final String infofive;
  final String infosix;
  final String infoseven;
  final String infoeight;
  final String infonine;

  const Information(
      {Key key,
      this.info,
      this.infotwo,
      this.infothree,
      this.infofour,
      this.infofive,
      this.infosix,
      this.infoseven,
      this.infoeight,
      this.infonine})
      : super(key: key);
  @override
  _InformationState createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.deepOrange,
                    Color(0xFFFFFAF0),
                    Color(0xFF00FA9A),
                  ]),
            ),
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              SizedBox(
                height: 50,
              ),
              // CircleAvatar(
              //   radius: 50,
              //   backgroundImage: AssetImage(
              //     "assets/images/lord_hanuman.jpg",
              //   ),
              //   backgroundColor: Colors.transparent,
              // ),
              Center(
                child: Material(
                  // with Material
                  child: Image.asset(
                    'assets/images/lord_hanuman.jpg',
                  ),
                  elevation: 10.0,
                  shape: CircleBorder(),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "A note from the Developer\n\t\t\t -Tarush J. Reddy",
                  style: GoogleFonts.bubblegumSans(
                      fontSize: 25,
                      color: Color(0xFFF5F5F5),
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 5.0),
                          blurRadius: 5.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        // Shadow(
                        //   offset: Offset(10.0, 10.0),
                        //   blurRadius: 8.0,
                        //   color: Color.fromARGB(125, 0, 0, 255),
                        // ),
                      ]),
                ),
              ),
              // SizedBox(
              //   height: 50,
              // ),

              Container(
                child: Text(
                  "\n\n\nRespected User \n Thank You for downoading this application. By clicking this btton you will be validating the entered details and enter into the main app and please do check if there is any error in the details entered in the settings.....\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t- Tarush J. Reddy",
                  style: GoogleFonts.bubblegumSans(
                      fontSize: 25,
                      color: Color(0xFFF5F5F5),
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 3.0),
                          blurRadius: 5.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        // Shadow(
                        //   offset: Offset(10.0, 10.0),
                        //   blurRadius: 8.0,
                        //   color: Color.fromARGB(125, 0, 0, 255),
                        // ),
                      ]),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      RevealRoute(
                        page: DetailPage(
                            username: widget.info,
                            lastname: widget.infotwo,
                            firstname: widget.infothree,
                            contactnuber: widget.infofour,
                            password: widget.infofive,
                            confirmpassword: widget.infosix,
                            emailid: widget.infoseven,
                            areapincode: widget.infoeight,
                            date: widget.infonine,
                            storage: Storage()),
                        maxRadius: 800,
                        centerAlignment: Alignment.center,
                      ));
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
              SizedBox(
                height: 10,
              ),
              Row(children: <Widget>[
                SizedBox(
                  width: 60,
                ),
                Image.asset(
                  "assets/images/swachh.png",
                  width: 120,
                  // height: 90,
                ),
                SizedBox(
                  width: 50,
                ),
                Image.asset(
                  "assets/images/makeinindia.png",
                  width: 90,
                  // height: 90,
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
              ),
            ])))
      ]),
    );
  }
}
