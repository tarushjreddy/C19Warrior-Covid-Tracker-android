import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:http/http.dart';
import 'dart:convert';

class Newsroom extends StatefulWidget {
  @override
  _NewsroomState createState() => _NewsroomState();
}

class _NewsroomState extends State<Newsroom> {
  String trendone;
  String trendtwo;
  String trendthree;
  String trendfour;
  String trendfive;
  String trendsix;
  String trendseven;
  String trendeight;
  String trendnine;
  String trendten;

  String trendsone;
  String trendstwo;
  String trendsthree;
  String trendsfour;
  String trendsfive;
  String trendssix;
  String trendsseven;
  String trendseight;
  String trendsnine;
  String trendsten;

  void getCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/newsreport/Importantnewsreport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    trendone = data['Trendone'];
    trendtwo = data['Trendtwo'];
    trendthree = data['Trendthree'];
    trendfour = data['Trendfour'];
    trendfive = data['Trendfive'];
    trendsix = data['Trendsix'];
    trendseven = data['Trendseven'];
    trendeight = data['Trendeight'];
    trendnine = data['Trendnine'];
    trendten = data['Trendten'];
    print(trendone);
    setState(() {});
  }

  void gettwoCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/newsreporttwo/Importantnewsreport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    trendsone = data['Trendsone'];
    print(trendone);
    trendstwo = data['Trendstwo'];
    trendsthree = data['Trendsthree'];
    trendsfour = data['Trendsfour'];
    trendsfive = data['Trendsfive'];
    trendssix = data['Trendssix'];
    trendsseven = data['Trendsseven'];
    trendseight = data['Trendseight'];
    trendsnine = data['Trendsnine'];
    trendsten = data['Trendsten'];
    print(trendone);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCase();
    gettwoCase();

    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(30),
                    //             image: DecorationImage(
                    // alignment: Alignment.topRight,

                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.deepOrange,
                          Colors.white,
                          Colors.green,
                        ]),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 9,
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      image: AssetImage(
                        "assets/images/pngfuel.com-7.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                // const Divider(
                //   color: Colors.grey,
                //   height: 1,
                //   thickness: 2,
                //   indent: 10,
                //   endIndent: 10,
                // ),
                Text(
                  "National News",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,

                    // shadows: <Shadow>[
                    //   Shadow(
                    //     offset: Offset(1.0, 3.0),
                    //     blurRadius: 5.0,
                    //     color: Color.fromARGB(255, 0, 0, 0),
                    //   ),
                    //   // Shadow(
                    //   //   offset: Offset(10.0, 10.0),
                    //   //   blurRadius: 8.0,
                    //   //   color: Color.fromARGB(125, 0, 0, 255),
                    //   // ),
                    // ]
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendone',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendtwo',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendthree',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendfour',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendfive',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(30),
                    //             image: DecorationImage(
                    // alignment: Alignment.topRight,

                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          // Colors.deepOrange,
                          Colors.red,
                          Colors.red[100],
                        ]),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 9,
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      image: AssetImage(
                        "assets/images/pngfuel.com-11.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                // const Divider(
                //   color: Colors.grey,
                //   height: 1,
                //   thickness: 2,
                //   indent: 10,
                //   endIndent: 10,
                // ),
                Text(
                  "Science and Technology",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,

                    // shadows: <Shadow>[
                    //   Shadow(
                    //     offset: Offset(1.0, 3.0),
                    //     blurRadius: 5.0,
                    //     color: Color.fromARGB(255, 0, 0, 0),
                    //   ),
                    //   // Shadow(
                    //   //   offset: Offset(10.0, 10.0),
                    //   //   blurRadius: 8.0,
                    //   //   color: Color.fromARGB(125, 0, 0, 255),
                    //   // ),
                    // ]
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendsix',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendseven',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendeight',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendnine',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendten',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(30),
                    //             image: DecorationImage(
                    // alignment: Alignment.topRight,

                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          // Colors.deepOrange,
                          Colors.yellow,
                          Colors.red,
                        ]),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 9,
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      image: AssetImage(
                        "assets/images/pngfuel.com-8.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                // const Divider(
                //   color: Colors.grey,
                //   height: 1,
                //   thickness: 2,
                //   indent: 10,
                //   endIndent: 10,
                // ),
                Text(
                  "State News",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,

                    // shadows: <Shadow>[
                    //   Shadow(
                    //     offset: Offset(1.0, 3.0),
                    //     blurRadius: 5.0,
                    //     color: Color.fromARGB(255, 0, 0, 0),
                    //   ),
                    //   // Shadow(
                    //   //   offset: Offset(10.0, 10.0),
                    //   //   blurRadius: 8.0,
                    //   //   color: Color.fromARGB(125, 0, 0, 255),
                    //   // ),
                    // ]
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendsone',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendstwo',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendsthree',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendsfour',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendsfive',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(30),
                    //             image: DecorationImage(
                    // alignment: Alignment.topRight,

                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          // Colors.deepOrange,
                          Colors.white,
                          Colors.blue,
                        ]),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 2),
                        blurRadius: 9,
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      image: AssetImage(
                        "assets/images/pngfuel.com-13.png",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                // const Divider(
                //   color: Colors.grey,
                //   height: 1,
                //   thickness: 2,
                //   indent: 10,
                //   endIndent: 10,
                // ),
                Text(
                  "Vaccination Updates",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,

                    // shadows: <Shadow>[
                    //   Shadow(
                    //     offset: Offset(1.0, 3.0),
                    //     blurRadius: 5.0,
                    //     color: Color.fromARGB(255, 0, 0, 0),
                    //   ),
                    //   // Shadow(
                    //   //   offset: Offset(10.0, 10.0),
                    //   //   blurRadius: 8.0,
                    //   //   color: Color.fromARGB(125, 0, 0, 255),
                    //   // ),
                    // ]
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendssix',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendsseven',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendseight',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendsnine',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\t" '$trendsten',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,

                      // shadows: <Shadow>[
                      //   Shadow(
                      //     offset: Offset(1.0, 3.0),
                      //     blurRadius: 5.0,
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //   ),
                      //   // Shadow(
                      //   //   offset: Offset(10.0, 10.0),
                      //   //   blurRadius: 8.0,
                      //   //   color: Color.fromARGB(125, 0, 0, 255),
                      //   // ),
                      // ]
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
