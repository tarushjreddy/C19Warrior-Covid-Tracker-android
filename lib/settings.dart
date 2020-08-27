import 'package:C19warrior/sharedpreferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'animation.dart';
import 'package:flutter/material.dart';
import 'animation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

// Future<bool> saveNamePrefrences(String name) async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   preferences.setString("name", name);

//   return preferences.commit();
// }

// Future<String> getNamePrefrences(String name) async {
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//   String name = preferences.getString("name");

//   return name;
// }

// class settings extends StatefulWidget {
//   final String uid;
//   const settings({
//     Key key,
//     this.uid,
//     String username,
//   }) : super(key: key);

//   @override
//   _settingsState createState() => _settingsState();
// }

// class _settingsState extends State<settings> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.lightBlue[100],
//         child: Column(
//           children: <Widget>[
//             Container(
//               margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
//               height: 500,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(1),
//                     topRight: Radius.circular(1),
//                     bottomLeft: Radius.circular(50),
//                     bottomRight: Radius.circular(50)),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.lightBlue[200].withOpacity(1.0),
//                     spreadRadius: 10,
//                     blurRadius: 7,
//                     offset: Offset(0, 3),
//                     // changes position of shadow
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: <Widget>[
//                   SizedBox(
//                     height: 70,
//                   ),
//                   Container(
//                     height: 100.0,
//                     width: 100.0,
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         shape: BoxShape.circle,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey,
//                             blurRadius: 15.0,
//                             spreadRadius: .2,
//                           ),
//                         ]),
//                     child: Center(
//                       child: Material(
//                           child: Text(
//                         "Profile pic not uploaded",
//                         style: GoogleFonts.roboto(
//                             fontSize: 8,
//                             color: Colors.grey,
//                             shadows: <Shadow>[
//                               // Shadow(
//                               //   offset: Offset(1.0, 3.0),
//                               //   blurRadius: 5.0,
//                               //   color: Colors.black,
//                               // ),
//                               // Shadow(
//                               //   offset: Offset(10.0, 10.0),
//                               //   blurRadius: 8.0,
//                               //   color: Color.fromARGB(125, 0, 0, 255),
//                               // ),
//                             ]),
//                       )),
//                     ),
//                   ),
//                   Row(
//                     children: <Widget>[
//                       Material(
//                         child: Text(
//                           '${widget.uid}',
//                           style: TextStyle(color: Colors.red),
//                           // style: GoogleFonts.montserrat(
//                           //   fontSize: 15,
//                           //   color: Colors.black,
//                           // ),
//                         ),
//                       ),
//                       SizedBox(
//                         width: 20,
//                       ),
//                       Material(),
//                       SizedBox(
//                         width: 20,
//                       ),
//                     ],
//                   ),
//                   RaisedButton(onPressed: () {})
//                 ],
//               ),
//             )
//           ],
//         ));
//   }
// }
class settings extends StatefulWidget {
  final String omsairam;

  final String lastname;
  final String username;
  final String firstname;
  final String contactnuber;
  final String password;
  final String areapincode;
  final String emailid;
  final String confirmpassword;
  final String date;

  const settings(
      {Key key,
      this.omsairam,
      this.lastname,
      this.username,
      this.firstname,
      this.contactnuber,
      this.password,
      this.areapincode,
      this.emailid,
      this.confirmpassword,
      this.date})
      : super(key: key);
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF11249F),
                        Color(0xFF1E90FF),
                        Color(0xFF3383CD),
                        Color(0xFF11249F),
                      ]),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(1),
                      topRight: Radius.circular(1),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.lightBlue[200].withOpacity(1.0),
                  //     spreadRadius: 10,
                  //     blurRadius: 7,
                  //     offset: Offset(0, 3),
                  //     // changes position of shadow
                  //   ),
                  // ],
                  image: DecorationImage(
                    alignment: Alignment.bottomLeft,
                    image: AssetImage(
                      "assets/images/virus.png",
                    ),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),

                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                          'assets/images/D42CF5E4-E6D8-4321-A6AD-612366DE5518_1_105_c.jpeg'),
                    ),
                    // Image.asset(
                    //   "assets/images/pngfuel.com-21.png",
                    //   height: 250,
                    // ),
                    SizedBox(
                      width: 40,
                    ),
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                          'assets/images/A8ACD89F-B1B7-47C6-8697-ECA9FF104AD6_1_105_c.jpeg'),
                    ),
                  ],
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      Colors.white,
                      // Colors.red,
                      // Color(0xFF11249F),
                      // Color(0xFF1E90FF),
                      // Color(0xFF3383CD),
                      // Color(0xFF11249F),
                    ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(00),
                    bottomRight: Radius.circular(00)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300].withOpacity(1.0),
                    spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                    // changes position of shadow
                  ),
                ],
                // image: DecorationImage(
                //   alignment: Alignment.bottomLeft,
                //   image: AssetImage(
                //     "assets/images/virus.png",
                //   ),
                // ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 135,
                      ),
                      Text(
                        "User Details",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Username :",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "${widget.username}",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Name :",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "${widget.firstname}" "\t" "${widget.lastname}",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Emailid :",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "${widget.emailid}",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Contact Number :",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "${widget.contactnuber}",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Area Pincode :",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "${widget.areapincode}",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            )
            // Row(
            //   children: <Widget>[
            //     Text("${widget.username}"),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
