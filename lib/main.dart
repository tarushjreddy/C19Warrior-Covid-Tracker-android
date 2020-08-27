import 'package:C19warrior/settings.dart';
import 'package:C19warrior/userlogin.dart';
import 'package:C19warrior/virtualzoneloc.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'counter.dart';
import 'revaling.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:C19warrior/theme.dart';
import 'information.dart';
import 'allinone.dart';
import 'news.dart';
import 'maps.dart';
import 'animation.dart';
import 'page01.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: Brightness.light,
      builder: (context, _brightness) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(brightness: _brightness),
          home: Splash(),
        );
      },
    );

    // MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Covid ',
    //     theme: ThemeData(
    //         scaffoldBackgroundColor: kBackgroundColor,
    //         textTheme: TextTheme(
    //           body1: TextStyle(color: kBodyTextColor),
    //         )),
    //     home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  final String omsairam;
  final Storage storage;
  final String lastname;
  final String username;
  final String firstname;
  final String contactnuber;
  final String password;
  final String areapincode;
  final String emailid;
  final String confirmpassword;
  final String date;

  const HomeScreen(
      {Key key,
      this.username,
      this.omsairam,
      this.storage,
      this.lastname,
      this.firstname,
      this.contactnuber,
      this.password,
      this.areapincode,
      this.emailid,
      this.confirmpassword,
      this.date})
      : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  String details;
  String nameid;
  String totalcase;
  String totalrecovered;
  String totaldeath;
  String totalcasepd;
  String totalrecoveredpd;
  String totaldeathpd;
  String location;
  String totalcaseo;
  String totalrecoveredr;
  String totaldeathw;
  String detailska;
  String nameidka;
  String totalcaseka;
  String totalrecoveredka;
  String totaldeathka;
  String totalcasepdka;
  String totalrecoveredpdka;
  String totaldeathpdka;
  String locationka;
  String totalcaseoka;
  String totalrecoveredrka;
  String totaldeathwka;

  void getKarnataCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/karnatakacoviddata/IndiaCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCaseska']);
    print(data['TotalDeathsla']);
    detailska = data['TotalRecoveredka'];
    print(data.length);
    locationka = data['Nameka'];
    totalcaseka = data['TotalCaseska'];
    totaldeathka = data['TotalDeathska'];
    totalrecoveredka = data['TotalRecoveredka'];
    totalcasepdka = data['TotalIncka'];
    totaldeathpdka = data['TotalDecka'];
    totalrecoveredpdka = data['TotalRecka'];
    totalcaseoka = data['TotalCasesoka'];
    totaldeathwka = data['TotalDeathswka'];
    totalrecoveredrka = data['TotalRecoveredrka'];
    print(locationka);
    setState(() {});
  }

  void getCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/indiacovid/IndiaCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    location = data['Name'];
    totalcase = data['TotalCases'];
    totaldeath = data['TotalDeaths'];
    totalrecovered = data['TotalRecovered'];
    totalcasepd = data['TotalInc'];
    totaldeathpd = data['TotalDec'];
    totalrecoveredpd = data['TotalRec'];
    totalcaseo = data['TotalCaseso'];
    totaldeathw = data['TotalDeathsw'];
    totalrecoveredr = data['TotalRecoveredr'];

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCase();
    getKarnataCase();
    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    bottomLeft: Radius.circular(0),
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
              child: Column(
                children: <Widget>[
                  // Align(
                  //   alignment: Alignment.topRight,
                  //   child: GestureDetector(
                  //       onTap: () {
                  //         // Navigator.push(
                  //         //     context,
                  //         //     // RevealRoute(
                  //         //     //   page: settings(

                  //         //     //   ),
                  //         //     //   maxRadius: 800,
                  //         //     //   centerAlignment: Alignment.center,
                  //         //     // ));
                  //       },
                  //       child: Image.asset(
                  //         "assets/images/om.png",
                  //         width: 20,
                  //         height: 20,
                  //         color: Colors.black,
                  //       )),
                  // ),
                  SizedBox(
                    height: 6,
                  ),
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 45,
                          right: 175,
                          child: Image.asset(
                            "assets/images/pm.png",
                            width: 230,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        // Positioned(
                        //   top: 5,
                        //   left: 70,
                        //   child: Text(
                        //     "Jai Hind Vande Matharam",
                        //     style: GoogleFonts.poppins(
                        //       fontSize: 20,
                        //       fontWeight: FontWeight.w500,
                        //       color: Color(0xFFF5F5F5),

                        //       // shadows: <Shadow>[
                        //       //   Shadow(
                        //       //     offset: Offset(1.0, 3.0),
                        //       //     blurRadius: 5.0,
                        //       //     color: Color.fromARGB(255, 0, 0, 0),
                        //       //   ),
                        //       //   // Shadow(
                        //       //   //   offset: Offset(10.0, 10.0),
                        //       //   //   blurRadius: 8.0,
                        //       //   //   color: Color.fromARGB(125, 0, 0, 255),
                        //       //   // ),
                        //       // ]
                        //     ),
                        //   ),
                        // ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Positioned(
                          top: 30,
                          left: 95,
                          child: Text(
                            "\tMaintain Scial Distancing",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color(0xFFF5F5F5),
                                fontWeight: FontWeight.w500
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
                        Positioned(
                          top: 57,
                          left: 180,
                          child: Text(
                            "\t\tand Wear Mask",
                            style: GoogleFonts.poppins(
                                fontSize: 20,
                                color: Color(0xFFF5F5F5),
                                fontWeight: FontWeight.w500
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
                        Positioned(
                          top: 155,
                          left: 185,
                          child: Text(
                            "\t- Hon'ble Prime Minister \n \t\t\t\tShri Narendra Modi",
                            style: GoogleFonts.vesperLibre(
                                fontSize: 15,
                                color: Color(0xFFF5F5F5),
                                fontWeight: FontWeight.w500
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
                        Container(),
                      ],
                    ), //stack
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // const Divider(
            //   color: Colors.grey,
            //   height: 1,
            //   thickness: 2,
            //   indent: 40,
            //   endIndent: 40,
            // ),

            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    color: Colors.grey,
                  ),
                ],
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Case Update\n",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  // shadows: <Shadow>[
                                  //   Shadow(
                                  //     offset: Offset(1.0, 5.0),
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
                              TextSpan(
                                text: "(updated few seconds ago)",
                                style: GoogleFonts.poppins(
                                  fontSize: 15,

                                  color: Colors.black,
                                  // shadows: <Shadow>[
                                  //   Shadow(
                                  //     offset: Offset(1.0, 5.0),
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
                            ],
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\nSee details",
                          style: GoogleFonts.poppins(
                            fontSize: 15,

                            color: Colors.blue,
                            // shadows: <Shadow>[
                            //   Shadow(
                            //     offset: Offset(1.0, 5.0),
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
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 10,
                            color: Colors.grey[500],
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 70,
                              ),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    '$location',
                                    style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Counter(
                                    color: Colors.purple,
                                    title: "Total Cases",
                                    number: '$totalcase',
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  Counter(
                                    color: Colors.purple,
                                    title: "Total Cases",
                                    number: '$totalcaseo',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Counter(
                                    color: Colors.red,
                                    title: "Total Deaths",
                                    number: '$totaldeath',
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Counter(
                                    color: Colors.red,
                                    title: "Total Deaths",
                                    number: '$totaldeathw',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Counter(
                                    color: Colors.green,
                                    title: "Total Recovered",
                                    number: '$totalrecovered',
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Counter(
                                    color: Colors.green,
                                    title: "Total Recovered",
                                    number: '$totalrecoveredr',
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Text(
                      "\nDetailed Report",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        // shadows: <Shadow>[
                        //   Shadow(
                        //     offset: Offset(1.0, 5.0),
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
                    Text(
                      "Click below to view",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                        // shadows: <Shadow>[
                        //   Shadow(
                        //     offset: Offset(1.0, 5.0),
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
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => settings(
                        //       uid: widget.username,
                        //     ),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          RevealRoute(
                            page: detaileddata(),
                            maxRadius: 800,
                            centerAlignment: Alignment.center,
                          ),
                        );
                        // );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 15, top: 0, right: 15, bottom: 0),
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
                              "assets/images/india.png",
                            ),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            // Text(
                            //   "\nDetailed Report",
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.white,
                            //     // shadows: <Shadow>[
                            //     //   Shadow(
                            //     //     offset: Offset(1.0, 5.0),
                            //     //     blurRadius: 5.0,
                            //     //     color: Color.fromARGB(255, 0, 0, 0),
                            //     //   ),
                            //     //   // Shadow(
                            //     //   //   offset: Offset(10.0, 10.0),
                            //     //   //   blurRadius: 8.0,
                            //     //   //   color: Color.fromARGB(125, 0, 0, 255),
                            //     //   // ),
                            //     // ]
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 10,
                            // ),

                            SizedBox(
                              height: 0,
                            ),
                            // GestureDetector(
                            //   onTap: () {
                            //     // Navigator.push(
                            //     //   context,
                            //     //   MaterialPageRoute(
                            //     //     builder: (context) => settings(
                            //     //       uid: widget.username,
                            //     //     ),
                            //     //   ),
                            //     // );
                            //     Navigator.push(
                            //       context,
                            //       RevealRoute(
                            //         page: Infoscreen(),
                            //         maxRadius: 800,
                            //         centerAlignment: Alignment.center,
                            //       ),
                            //     );
                            //     // );
                            //   },
                            //   child: Text(
                            //     "Click here for further details",
                            //     style: TextStyle(
                            //       color: Colors.blue,
                            //       fontWeight: FontWeight.w600,
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 50,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Text(
                      "\nVrtual Zone Locator",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Virtual covid zone finder India",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => settings(
                        //       uid: widget.username,
                        //     ),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          RevealRoute(
                            page: GMaptwo(),
                            maxRadius: 800,
                            centerAlignment: Alignment.center,
                          ),
                        );
                        // );
                      },
                      child: Image.asset("assets/images/pngfuel.com-17.png"),
                    ),
                    // Text(
                    //   "\nSafety is No.1 Priority",
                    //   style: GoogleFonts.poppins(
                    //     fontSize: 20,
                    //     fontWeight: FontWeight.w500,
                    //     color: Colors.black,
                    //   ),
                    // ),
                    // Text(
                    //   "Click below to view",
                    //   style: GoogleFonts.poppins(
                    //     fontSize: 10,
                    //     fontWeight: FontWeight.w500,
                    //     color: Colors.blue,
                    //   ),
                    // ),
                    SizedBox(
                      height: 3,
                    ),
                    // SizedBox(
                    //   height: 60,
                    // ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\nSafety is No.1 Priority",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Click below to view",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => settings(
                        //       uid: widget.username,
                        //     ),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          RevealRoute(
                            page: Infoscreen(),
                            maxRadius: 800,
                            centerAlignment: Alignment.center,
                          ),
                        );
                        // );
                      },
                      child: Container(
                        height: 200,
                        margin: EdgeInsets.only(
                            left: 15, top: 0, right: 19, bottom: 0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.blue,
                                Colors.blue[50],
                                // Colors.black,
                              ]),
                          // borderRadius: BorderRadius.circular(30),

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
                            alignment: Alignment.bottomCenter,
                            fit: BoxFit.contain,
                            image: AssetImage(
                              "assets/images/doctor.png",
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // Text(
                            //   "\nSafety is No.1 Priority",
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w500,
                            //     color: Colors.black,
                            //     // shadows: <Shadow>[
                            //     //   Shadow(
                            //     //     offset: Offset(1.0, 5.0),
                            //     //     blurRadius: 5.0,
                            //     //     color: Color.fromARGB(255, 0, 0, 0),
                            //     //   ),
                            //     //   // Shadow(
                            //     //   //   offset: Offset(10.0, 10.0),
                            //     //   //   blurRadius: 8.0,
                            //     //   //   color: Color.fromARGB(125, 0, 0, 255),
                            //     //   // ),
                            //     // ]
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Row(
                            //   children: <Widget>[
                            //     SizedBox(
                            //       width: 100,
                            //     ),
                            //     Image.asset(
                            //       "assets/images/pngfuel.com-14.png",
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //     SizedBox(
                            //       width: 40,
                            //     ),
                            //     Image.asset(
                            //       "assets/images/pngfuel.com-9.png",
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Text(
                            //   "Click here for further details",
                            //   style: TextStyle(
                            //     color: Colors.blue,
                            //     fontWeight: FontWeight.w600,
                            //   ),
                            // ),
                            // GestureDetector(
                            //   onTap: () {
                            //     // Navigator.push(
                            //     //   context,
                            //     //   MaterialPageRoute(
                            //     //     builder: (context) => settings(
                            //     //       uid: widget.username,
                            //     //     ),
                            //     //   ),
                            //     // );
                            //     Navigator.push(
                            //       context,
                            //       RevealRoute(
                            //         page: Infoscreen(),
                            //         maxRadius: 800,
                            //         centerAlignment: Alignment.center,
                            //       ),
                            //     );
                            //     // );
                            //   },
                            //   child: Text(
                            //     "Click here for further details",
                            //     style: TextStyle(
                            //       color: Colors.blue,
                            //       fontWeight: FontWeight.w600,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Text(
                      "\nImportant News Room",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Click below to view",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => settings(
                        //       uid: widget.username,
                        //     ),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          RevealRoute(
                            page: Newsroom(),
                            maxRadius: 800,
                            centerAlignment: Alignment.center,
                          ),
                        );
                        // );
                      },
                      child: Container(
                        height: 200,
                        margin: EdgeInsets.only(
                            left: 15, top: 0, right: 19, bottom: 0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.yellow,
                                Colors.yellow[50],
                                // Colors.black,
                              ]),
                          // borderRadius: BorderRadius.circular(30),

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
                            alignment: Alignment.bottomCenter,
                            fit: BoxFit.contain,
                            image: AssetImage(
                              "assets/images/newa.png",
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // Text(
                            //   "\nSafety is No.1 Priority",
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w500,
                            //     color: Colors.black,
                            //     // shadows: <Shadow>[
                            //     //   Shadow(
                            //     //     offset: Offset(1.0, 5.0),
                            //     //     blurRadius: 5.0,
                            //     //     color: Color.fromARGB(255, 0, 0, 0),
                            //     //   ),
                            //     //   // Shadow(
                            //     //   //   offset: Offset(10.0, 10.0),
                            //     //   //   blurRadius: 8.0,
                            //     //   //   color: Color.fromARGB(125, 0, 0, 255),
                            //     //   // ),
                            //     // ]
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Row(
                            //   children: <Widget>[
                            //     SizedBox(
                            //       width: 100,
                            //     ),
                            //     Image.asset(
                            //       "assets/images/pngfuel.com-14.png",
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //     SizedBox(
                            //       width: 40,
                            //     ),
                            //     Image.asset(
                            //       "assets/images/pngfuel.com-9.png",
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Text(
                            //   "Click here for further details",
                            //   style: TextStyle(
                            //     color: Colors.blue,
                            //     fontWeight: FontWeight.w600,
                            //   ),
                            // ),
                            // GestureDetector(
                            //   onTap: () {
                            //     // Navigator.push(
                            //     //   context,
                            //     //   MaterialPageRoute(
                            //     //     builder: (context) => settings(
                            //     //       uid: widget.username,
                            //     //     ),
                            //     //   ),
                            //     // );
                            //     Navigator.push(
                            //       context,
                            //       RevealRoute(
                            //         page: Infoscreen(),
                            //         maxRadius: 800,
                            //         centerAlignment: Alignment.center,
                            //       ),
                            //     );
                            //     // );
                            //   },
                            //   child: Text(
                            //     "Click here for further details",
                            //     style: TextStyle(
                            //       color: Colors.blue,
                            //       fontWeight: FontWeight.w600,
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Text(
                      "\nGraphical Case Representation",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Click below to view",
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => settings(
                        //       uid: widget.username,
                        //     ),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          RevealRoute(
                            page: Maps(),
                            maxRadius: 800,
                            centerAlignment: Alignment.center,
                          ),
                        );
                        // );
                      },
                      child: Container(
                        height: 200,
                        margin: EdgeInsets.only(
                            left: 15, top: 0, right: 19, bottom: 0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.red,
                                Colors.red[50],
                                // Colors.black,
                              ]),
                          // borderRadius: BorderRadius.circular(30),

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
                              "assets/images/worldcovid19.png",
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // Text(
                            //   "\nSafety is No.1 Priority",
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w500,
                            //     color: Colors.black,
                            //     // shadows: <Shadow>[
                            //     //   Shadow(
                            //     //     offset: Offset(1.0, 5.0),
                            //     //     blurRadius: 5.0,
                            //     //     color: Color.fromARGB(255, 0, 0, 0),
                            //     //   ),
                            //     //   // Shadow(
                            //     //   //   offset: Offset(10.0, 10.0),
                            //     //   //   blurRadius: 8.0,
                            //     //   //   color: Color.fromARGB(125, 0, 0, 255),
                            //     //   // ),
                            //     // ]
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Row(
                            //   children: <Widget>[
                            //     SizedBox(
                            //       width: 100,
                            //     ),
                            //     Image.asset(
                            //       "assets/images/pngfuel.com-14.png",
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //     SizedBox(
                            //       width: 40,
                            //     ),
                            //     Image.asset(
                            //       "assets/images/pngfuel.com-9.png",
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Text(
                            //   "Click here for further details",
                            //   style: TextStyle(
                            //     color: Colors.blue,
                            //     fontWeight: FontWeight.w600,
                            //   ),
                            // ),
                            // GestureDetector(
                            //   onTap: () {
                            //     // Navigator.push(
                            //     //   context,
                            //     //   MaterialPageRoute(
                            //     //     builder: (context) => settings(
                            //     //       uid: widget.username,
                            //     //     ),
                            //     //   ),
                            //     // );
                            //     Navigator.push(
                            //       context,
                            //       RevealRoute(
                            //         page: Infoscreen(),
                            //         maxRadius: 800,
                            //         centerAlignment: Alignment.center,
                            //       ),
                            //     );
                            //     // );
                            //   },
                            //   child: Text(
                            //     "Click here for further details",
                            //     style: TextStyle(
                            //       color: Colors.blue,
                            //       fontWeight: FontWeight.w600,
                            //     ),
                            //   ),
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 0,
                    ),

                    Text(
                      "\nSet your app in a better way",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Row(children: <Widget>[
                      SizedBox(
                        width: 130,
                      ),
                      Text(
                        "Click below to view",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Dark Theme",
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            ThemeBuilder.of(context).changeTheme();
                          });
                        },
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.black,
                        activeColor: Colors.black,
                        inactiveThumbColor: Colors.grey,
                      )
                    ]),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => settings(
                        //       uid: widget.username,
                        //     ),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          RevealRoute(
                            page: settings(
                              username: widget.username,
                              lastname: widget.lastname,
                              areapincode: widget.areapincode,
                              contactnuber: widget.contactnuber,
                              emailid: widget.emailid,
                              date: widget.date,
                              firstname: widget.firstname,
                              password: widget.password,
                            ),
                            maxRadius: 800,
                            centerAlignment: Alignment.center,
                          ),
                        );
                        // );
                      },
                      child: Container(
                        height: 200,
                        margin: EdgeInsets.only(
                            left: 15, top: 0, right: 19, bottom: 0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.grey,
                                Colors.grey[50],
                                // Colors.black,
                              ]),
                          // borderRadius: BorderRadius.circular(30),

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
                              "assets/images/pngfuel.com-4.png",
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // Text(
                            //   "\nSafety is No.1 Priority",
                            //   style: GoogleFonts.poppins(
                            //     fontSize: 20,
                            //     fontWeight: FontWeight.w500,
                            //     color: Colors.black,
                            //     // shadows: <Shadow>[
                            //     //   Shadow(
                            //     //     offset: Offset(1.0, 5.0),
                            //     //     blurRadius: 5.0,
                            //     //     color: Color.fromARGB(255, 0, 0, 0),
                            //     //   ),
                            //     //   // Shadow(
                            //     //   //   offset: Offset(10.0, 10.0),
                            //     //   //   blurRadius: 8.0,
                            //     //   //   color: Color.fromARGB(125, 0, 0, 255),
                            //     //   // ),
                            //     // ]
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Row(
                            //   children: <Widget>[
                            //     SizedBox(
                            //       width: 100,
                            //     ),
                            //     Image.asset(
                            //       "assets/images/pngfuel.com-14.png",
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //     SizedBox(
                            //       width: 40,
                            //     ),
                            //     Image.asset(
                            //       "assets/images/pngfuel.com-9.png",
                            //       height: 50,
                            //       width: 50,
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(
                            //   height: 20,
                            // ),
                            // Text(
                            //   "Click here for further details",
                            //   style: TextStyle(
                            //     color: Colors.blue,
                            //     fontWeight: FontWeight.w600,
                            //   ),
                            // ),
                            // GestureDetector(
                            //   onTap: () {
                            //     // Navigator.push(
                            //     //   context,
                            //     //   MaterialPageRoute(
                            //     //     builder: (context) => settings(
                            //     //       uid: widget.username,
                            //     //     ),
                            //     //   ),
                            //     // );
                            //     Navigator.push(
                            //       context,
                            //       RevealRoute(
                            //         page: Infoscreen(),
                            //         maxRadius: 800,
                            //         centerAlignment: Alignment.center,
                            //       ),
                            //     );
                            //     // );
                            //   },
                            //   child: Text(
                            //     "Click here for further details",
                            //     style: TextStyle(
                            //       color: Colors.blue,
                            //       fontWeight: FontWeight.w600,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Per Day rise in Cases",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                )),
            SizedBox(
              height: 20,
            ),
            // const Divider(
            //   color: Colors.grey,
            //   height: 1,
            //   thickness: 2,
            //   indent: 0,
            //   endIndent: 0,
            // ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 200,
                // margin: EdgeInsets.only(left: 15, top: 0, right: 19, bottom: 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white,
                        Colors.pink[50],
                        // Colors.black,
                      ]),
                  // borderRadius: BorderRadius.circular(30),

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
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0)),
                  // image: DecorationImage(
                  //   alignment: Alignment.center,
                  //   fit: BoxFit.contain,
                  //   image: AssetImage(
                  //     "assets/images/pngfuel.com-4.png",
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
                          width: 05,
                        ),
                        Text("Location",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                        SizedBox(
                          width: 80,
                        ),
                        Text("Case",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        SizedBox(
                          width: 40,
                        ),
                        Text("Dead",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Recovered",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // const Divider(
                    //   color: Colors.grey,
                    //   height: 1,
                    //   thickness: 2,
                    //   indent: 50,
                    //   endIndent: 50,
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 05,
                        ),
                        Text('$location',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                        SizedBox(
                          width: 50,
                        ),
                        Text('$totalcasepd',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        SizedBox(
                          width: 35,
                        ),
                        Text('$totaldeathpd',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        SizedBox(
                          width: 40,
                        ),
                        Text('$totalrecoveredpd',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // const Divider(
                    //   color: Colors.grey,
                    //   height: 1,
                    //   thickness: 2,
                    //   indent: 0,
                    //   endIndent: 0,
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 05,
                        ),
                        Text('$locationka',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        Text('$totalcasepdka',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            )),
                        SizedBox(
                          width: 30,
                        ),
                        Text('$totaldeathpdka',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        SizedBox(
                          width: 50,
                        ),
                        Text('$totalrecoveredpdka',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            )),
                        // const Divider(
                        //   color: Colors.grey,
                        //   height: 1,
                        //   thickness: 2,
                        //   indent: 40,
                        //   endIndent: 40,
                        // ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text("Jai Hind Vande Matharam"),
            SizedBox(
              height: 20,
            ),
            Text("This is Tarush J. Reddy signing off")
          ],
        ),
      ),
    );
  }
}

class addon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 300,
    );
  }
}

class Internet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class omsairam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
