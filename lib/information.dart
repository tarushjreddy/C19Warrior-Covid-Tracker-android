import 'package:flutter/material.dart';

import 'constant.dart';
import 'counter.dart';

import 'myheader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'graph.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Infoscreen extends StatefulWidget {
  final Widget child;

  const Infoscreen({Key key, this.child}) : super(key: key);
  @override
  _InfoscreenState createState() => _InfoscreenState();
}

class _InfoscreenState extends State<Infoscreen> {
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() {
    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(500, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(500, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(500, 60),
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(
          Colors.red,
        ),
        id: 'Air Pollution',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(
          Colors.purple,
        ),
        id: 'Air Pollution',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Colors.green),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _seriesLineData = List<charts.Series<Sales, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 0),
                    height: 230,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF8B0000),
                            Color(0xFFFF4500),
                            Color(0xFFFF0000),
                            Color(0xFF8B0000),
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
                        alignment: Alignment.center,
                        image: AssetImage(
                          "assets/images/virus.png",
                        ),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     // RevealRoute(
                                //     //   page: settings(

                                //     //   ),
                                //     //   maxRadius: 800,
                                //     //   centerAlignment: Alignment.center,
                                //     // ));
                              },
                              child: Image.asset(
                                "assets/images/om.png",
                                width: 20,
                                height: 20,
                                color: Colors.black,
                              )),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Expanded(
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 45,
                                right: 200,
                                child: Image.asset(
                                  "assets/images/pngkey.com-modi-full-png-7890820.png",
                                  width: 180,
                                  height: 180,
                                  // fit: BoxFit.fitWidth,
                                  alignment: Alignment.centerLeft,
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
                                left: 135,
                                child: Text(
                                  "Safety is No.1 Priority",
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
                                top: 80,
                                left: 125,
                                child: Text(
                                  "\tPreventon is better than ",
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
                                top: 115,
                                left: 210,
                                child: Image.asset(
                                  "assets/images/pngfuel.com-10.png",
                                  height: 90,
                                  width: 90,
                                ),
                              ),
                              Positioned(
                                top: 110,
                                left: 310,
                                child: Text(
                                  "cure..",
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
                              Container(),
                            ],
                          ), //stack
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Symptoms",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
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
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Symptomscard(
                          image: "assets/images/headache.svg",
                          title: "Headache",
                          isActive: true,
                        ),
                        Symptomscard(
                          image: "assets/images/caugh.svg",
                          title: "Caugh",
                          isActive: true,
                        ),
                        Symptomscard(
                          image: "assets/images/fever.svg",
                          title: "Fever",
                          isActive: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  const Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Precautionary measures",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
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

                  Container(
                      margin: EdgeInsets.only(top: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            Symptomscard(
                              image: "assets/images/bluemask.png",
                              title: "Wear N95 mask",
                              isActive: true,
                            ),
                            Symptomscard(
                              image: "assets/images/sheild.png",
                              title: "Wear a verified Sheild",
                              isActive: true,
                            ),
                            Symptomscard(
                              image: "assets/images/sheild.png",
                              title: "Wear a verified Sheild",
                              isActive: true,
                            ),
                            Symptomscard(
                              image: "assets/images/sanitfoot.png",
                              title: "Sanitize footwear when entering house.",
                              isActive: true,
                            ),
                            Symptomscard(
                              image: "assets/images/sanitize cloths.png",
                              title: "Sanitize clothes when entering house.",
                              isActive: true,
                            ),
                            Symptomscard(
                              image: "assets/images/gloves.png",
                              title: "Wear gloves if possible",
                              isActive: true,
                            ),
                            Symptomscard(
                              image: "assets/images/handi.png",
                              title: "Wash or sanitize hands every 5min",
                              isActive: true,
                            ),
                            Symptomscard(
                              image: "assets/images/coverhead.png",
                              title: "Cover head if possible.",
                              isActive: true,
                            ),
                            Symptomscard(
                              image: "assets/images/cover eyes.png",
                              title: "Cover eyes if possible.",
                              isActive: true,
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 15),
                  const Divider(
                    color: Colors.grey,
                    height: 20,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Graphical Representaation of Covid19 awareness in the public",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
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
                  Container(
                    height: 500,
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        // Text(
                        //   'Sales for the first 5 years',
                        //   style: TextStyle(
                        //       fontSize: 24.0, fontWeight: FontWeight.bold),
                        // ),
                        Expanded(
                          child: charts.LineChart(_seriesLineData,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: true,
                              animationDuration: Duration(seconds: 10),
                              behaviors: [
                                new charts.ChartTitle('Cases',
                                    behaviorPosition:
                                        charts.BehaviorPosition.bottom,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Awareness',
                                    behaviorPosition:
                                        charts.BehaviorPosition.start,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle(
                                  'Recoveries',
                                  behaviorPosition: charts.BehaviorPosition.end,
                                  titleOutsideJustification: charts
                                      .OutsideJustification.middleDrawArea,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),

                  // Preventcard(
                  //   image: "assets/images/bluemask.png",
                  //   title: "Wear Mask",
                  //   content:
                  //       "Wearing mask is very important \nduring this situation as life is \nvery  important",
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Preventcard(
                  //   image: "assets/images/wash_hands.png",
                  //   title: "Wash Hands",
                  //   content:
                  //       "Washing Hands is very \nimportant during this situation  \nas life is very important",
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // Preventcard(
                  //   image: "assets/images/wash_hands.png",
                  //   title: "Change mask",
                  //   content:
                  //       "Change mask is very important \nduring this situation \nas life is very  important",
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Preventcard extends StatelessWidget {
  final String image;
  final String title;
  final String content;
  const Preventcard({
    Key key,
    this.image,
    this.title,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 38),
                      blurRadius: 24,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              image,
              height: 40,
              width: 50,
            ),
            Positioned(
              left: 156,
              child: Container(
                height: 50,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Text(
                        title,
                        style: kTitleTextstyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        content,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Symptomscard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const Symptomscard({
    Key key,
    this.image,
    this.title,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 30),
                  blurRadius: 20,
                  color: kActiveShadowColor,
                )
              : BoxShadow(
                  offset: Offset(0, 30),
                  blurRadius: 6,
                  color: kShadowColor,
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            height: 90,
            width: 190,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500,
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
        ],
      ),
    );
  }
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
