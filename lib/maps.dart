import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:ffi';
import 'package:C19warrior/virtualzoneloc.dart';
import 'package:C19warrior/settings.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'myheader.dart';
import 'counter.dart';
import 'revaling.dart';
import 'page01.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dataextraction.dart';
import 'information.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'graph.dart';
import 'Detailedreport.dart';
import 'allinone.dart';
import 'news.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
import 'counter.dart';

import 'myheader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'graph.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Maps extends StatefulWidget {
  final Widget child;

  const Maps({Key key, this.child}) : super(key: key);
  @override
  _MapsState createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  List<charts.Series<Sales, int>> _seriesLineData;
  _generateData() {
    var linesalesdata = [
      new Sales(0, 1),
      new Sales(2, 10),
      new Sales(4, 20),
      new Sales(6, 30),
      new Sales(8, 50),
      new Sales(10, 60),
      new Sales(12, 80),
      new Sales(14, 100),
      new Sales(16, 120),
      new Sales(18, 140),
    ];
    // var linesalesdata1 = [
    //   new Sales(0, 35),
    //   new Sales(1, 46),
    //   new Sales(2, 45),
    //   new Sales(3, 50),
    //   new Sales(4, 51),
    //   new Sales(500, 60),
    // ];

    // var linesalesdata2 = [
    //   new Sales(0, 20),
    //   new Sales(1, 24),
    //   new Sales(2, 25),
    //   new Sales(3, 40),
    //   new Sales(4, 45),
    //   new Sales(500, 60),
    // ];

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
    // _seriesLineData.add(
    //   charts.Series(
    //     colorFn: (__, _) => charts.ColorUtil.fromDartColor(
    //       Colors.purple,
    //     ),
    //     id: 'Air Pollution',
    //     data: linesalesdata1,
    //     domainFn: (Sales sales, _) => sales.yearval,
    //     measureFn: (Sales sales, _) => sales.salesval,
    //   ),
    // );
    // _seriesLineData.add(
    //   charts.Series(
    //     colorFn: (__, _) => charts.ColorUtil.fromDartColor(Colors.green),
    //     id: 'Air Pollution',
    //     data: linesalesdata2,
    //     domainFn: (Sales sales, _) => sales.yearval,
    //     measureFn: (Sales sales, _) => sales.salesval,
    //   ),
    // );
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "\nVirtual Zone Locator",
                style: GoogleFonts.poppins(
                  fontSize: 23,
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
                height: 10,
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
                      page: GMaptwo(),
                      maxRadius: 800,
                      centerAlignment: Alignment.center,
                    ),
                  );
                  // );
                },
                child: Container(
                  height: 200,
                  margin:
                      EdgeInsets.only(left: 15, top: 0, right: 19, bottom: 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue[100],
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
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      image: AssetImage(
                        "assets/images/pngfuel.com-17.png",
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
                height: 20,
              ),
              Text(
                "\nGraphical Case Representation",
                style: GoogleFonts.poppins(
                  fontSize: 23,
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
                height: 10,
              ),
              SizedBox(
                height: 30,
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
                          animationDuration: Duration(seconds: 5),
                          behaviors: [
                            new charts.ChartTitle('Time',
                                behaviorPosition:
                                    charts.BehaviorPosition.bottom,
                                titleOutsideJustification:
                                    charts.OutsideJustification.middleDrawArea),
                            new charts.ChartTitle('Cases',
                                behaviorPosition: charts.BehaviorPosition.start,
                                titleOutsideJustification:
                                    charts.OutsideJustification.middleDrawArea),
                            // new charts.ChartTitle(
                            //   'Recoveries',
                            //   behaviorPosition: charts.BehaviorPosition.end,
                            //   titleOutsideJustification:
                            //       charts.OutsideJustification.middleDrawArea,
                            // )
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}
