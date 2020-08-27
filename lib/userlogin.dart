import 'package:C19warrior/main.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'revaling.dart';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'main.dart';

class DetailPage extends StatefulWidget {
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

  const DetailPage(
      {Key key,
      this.storage,
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
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String stateone;
  String statetwo;
  String statethree;
  String statefour;
  String statefive;
  String statesix;
  String stateseven;
  String stateeight;
  String statenine;
  String stateten;
  String messageone;
  String messagetwo;
  String messagethree;
  String messagfour;
  String messagefive;
  String messagesix;
  String messageseven;
  String messageeight;
  String messagenine;
  String messageten;
  String state;
  Future<Directory> _appDocDir;

  Future<File> writeDatausername() async {
    setState(() {
      stateone = messageone;
      messageone = '';
    });

    return widget.storage.writeDatausername(stateone);
  }

  Future<File> writeDatalastname() async {
    setState(() {
      statetwo = messagetwo;
      messagetwo = '';
    });

    return widget.storage.writeDatalastname(statetwo);
  }

  Future<File> writeDatafirstname() async {
    setState(() {
      statethree = messagethree;
      messagethree = '';
    });

    return widget.storage.writeDatafirstname(statethree);
  }

  Future<File> writeDatapincode() async {
    setState(() {
      statefour = messagfour;
      messagfour = '';
    });

    return widget.storage.writeDatapincode(statefour);
  }

  Future<File> writeDataemail() async {
    setState(() {
      statefive = messagefive;
      messagefive = '';
    });

    return widget.storage.writeDataemail(statefive);
  }

  Future<File> writeDatacontactnumber() async {
    setState(() {
      statesix = messagesix;
      messagesix = '';
    });

    return widget.storage.writeDatacontactnumber(statesix);
  }

  Future<File> writeDatapassword() async {
    setState(() {
      stateseven = messageseven;
      messageseven = '';
    });

    return widget.storage.writeDatapassword(stateseven);
  }

  Future<File> writeDatadate() async {
    setState(() {
      stateeight = messageeight;
      messageeight = '';
    });

    return widget.storage.writeDatadate(stateeight);
  }

  // Future<File> writeDatalastname() async {
  //   setState(() {
  //     statenine = messagenine;
  //     messagenine = '';
  //   });

  //   return widget.storage.writeData(stateseven);
  // }

  // Future<File> writeDatalastname() async {
  //   setState(() {
  //     stateten = messageten;
  //     messageten = '';
  //   });

  //   return widget.storage.writeData(stateseven);
  // }

  @override
  void initState() {
    super.initState();
    widget.storage.readDatausername().then(
      (String value) {
        setState(() {
          stateone = value;
        });
      },
    );
    widget.storage.readDatalastname().then(
      (String value) {
        setState(() {
          statetwo = value;
        });
      },
    );
    widget.storage.readDatafirstname().then(
      (String value) {
        setState(() {
          statethree = value;
        });
      },
    );
    widget.storage.readDataarea().then(
      (String value) {
        setState(() {
          statefour = value;
        });
      },
    );
    widget.storage.readDataemail().then(
      (String value) {
        setState(() {
          statefive = value;
        });
      },
    );
    widget.storage.readDatacontact().then(
      (String valsix) {
        setState(() {
          statesix = valsix;
        });
      },
    );
    widget.storage.readDatapass().then(
      (String valseven) {
        setState(() {
          stateseven = valseven;
        });
      },
    );

    widget.storage.readDatadate().then(
      (String value) {
        setState(() {
          stateeight = value;
        });
      },
    );
    // widget.storage.readDatapass().then(
    //   (String valnine) {
    //     setState(() {
    //       statenine = valnine;
    //     });
    //   },
    // );
    // widget.storage.readData().then(
    //   (String valten) {
    //     setState(() {
    //       stateten = valten;
    //     });
    //   },
    // );
  }

  void getAppDirectory() {
    setState(() {
      _appDocDir = getApplicationDocumentsDirectory();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Detail Page'),
      // ),
      body: SingleChildScrollView(
        child: Container(
            height: 900,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(30),
              //             image: DecorationImage(
              // alignment: Alignment.topRight,

              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.pink,
                    Colors.pink,
                  ]),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 9,
                  color: Colors.grey,
                ),
              ],
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(30),
              //     topRight: Radius.circular(30),
              //     bottomLeft: Radius.circular(30),
              //     bottomRight: Radius.circular(30)),
              //   image: DecorationImage(
              //     alignment: Alignment.center,
              //     fit: BoxFit.contain,
              //     // image: AssetImage(
              //     //   "assets/images/india.png",
              //     // ),
              //   ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Please click the buttons 1 and 2 respectively ",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                    ),
                    RaisedButton(
                      onPressed: () {
                        messageone = widget.username;
                        messagetwo = widget.firstname;
                        messagethree = widget.lastname;
                        messagfour = widget.areapincode;
                        messageeight = widget.date;
                        messagefive = widget.emailid;
                        messagesix = widget.contactnuber;
                        messageseven = widget.password;
                        messagenine = widget.confirmpassword;

                        print(messageeight);
                      },
                      elevation: 20.0,
                      color: Colors.grey,
                      colorBrightness: Brightness.light,
                      child: Text("1"),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                      splashColor: Colors.red,
                    ),
                    Text("......................."),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    RaisedButton(
                      onPressed: () {
                        writeDatadate();
                        writeDatacontactnumber();
                        writeDataemail();
                        writeDatafirstname();
                        writeDatalastname();
                        writeDatapassword();
                        writeDatapincode();
                        writeDatausername();
                      },
                      elevation: 20.0,
                      color: Colors.white,
                      colorBrightness: Brightness.light,
                      child: Text("2"),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                      splashColor: Colors.red,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // RaisedButton(
                //   child: Text("Get DIR path"),
                //   onPressed: getAppDirectory,
                // ),
                // RaisedButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => Fastandfu(
                //                 storage: Storage(),
                //                 thank: state,
                //               )),
                //     );
                //   },
                //   child: Text("omsairam"),
                // ),
                // Text('${stateone ?? "File is emplt"}'),
                // Text('${statetwo ?? "File is emplt"}'),
                // Text('${statethree ?? "File is emplt"}'),
                // Text('${statefour ?? "File is emplt"}'),
                // Text('${statefive ?? "File is emplt"}'),
                // Text('${statesix ?? "File is emplt"}'),
                // Text('${stateseven ?? "File is emplt"}'),
                // Text('${stateeight ?? "File is emplt"}'),
                // Text('${statenine ?? "File is emplt"}'),
                // Text('${stateten ?? "File is emplt"}'),
                FutureBuilder<Directory>(
                    future: _appDocDir,
                    builder: (BuildContext context,
                        AsyncSnapshot<Directory> snapshot) {
                      Text text = Text('');
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.hasError) {
                          text = Text('Error: ${snapshot.error}');
                        } else if (snapshot.hasData) {
                          text = Text('Path: ${snapshot.data.path}');
                        } else {
                          text = Text('Unavailable');
                        }
                      }
                      return new Container(
                        child: text,
                      );
                    }),
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
                    // Navigator.push(
                    //   context,
                    //   RevealRoute(
                    //     page: HomeScreen(),
                    //     maxRadius: 800,
                    //     centerAlignment: Alignment.center,
                    //   ),
                    // );
                    // );
                  },
                  child: Visibility(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 15, top: 0, right: 15, bottom: 0),
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(30),
                        //             image: DecorationImage(
                        // alignment: Alignment.topRight,

                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.indigo[900],
                              Colors.blue[500],
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
                        //   image: DecorationImage(
                        //     alignment: Alignment.center,
                        //     fit: BoxFit.contain,
                        //     // image: AssetImage(
                        //     //   "assets/images/india.png",
                        //     // ),
                        //   ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "\nWelcome Screen",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
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
                          // SizedBox(
                          //   height: 10,
                          // ),
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Username :\t",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                                  width: 10,
                                ),
                                Text(
                                  '${stateone ?? "File is emplt"}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Name :\t",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                                  width: 10,
                                ),
                                Text(
                                  '${statetwo ?? "File is emplt"}'
                                  "\t"
                                  '${statethree ?? "File is emplt"}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Email id :\t",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                                  width: 10,
                                ),
                                Text(
                                  '${statefive ?? "File is emplt"}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                          SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Date Of Birth :\t",
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                                  width: 10,
                                ),
                                Text(
                                  '${stateeight ?? "File is emplt"}',
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
                            height: 50,
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                RevealRoute(
                                  page: HomeScreen(
                                    username: stateone,
                                    firstname: statetwo,
                                    lastname: statethree,
                                    areapincode: statefour,
                                    emailid: statefive,
                                    contactnuber: statesix,
                                    password: stateseven,
                                    date: stateeight,
                                  ),
                                  maxRadius: 800,
                                  centerAlignment: Alignment.center,
                                ),
                              );
                              // );
                              // messageone = widget.username;
                              // messagetwo = widget.firstname;
                              // messagethree = widget.lastname;
                              // messagfour = widget.areapincode;
                              // messageeight = widget.date;
                              // messagefive = widget.emailid;
                              // messagesix = widget.contactnuber;
                              // messageseven = widget.password;
                              // messagenine = widget.confirmpassword;

                              // print(messageeight);
                            },
                            elevation: 20.0,
                            color: Colors.white,
                            colorBrightness: Brightness.light,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 35.0,
                            ),
                            padding: EdgeInsets.all(15.0),
                            shape: CircleBorder(),
                            splashColor: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding:
                        EdgeInsets.only(left: 5, top: 0, right: 5, bottom: 0),
                    margin:
                        EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(30),
                      //             image: DecorationImage(
                      // alignment: Alignment.topRight,

                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white,
                            Colors.yellow,
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
                      // image: DecorationImage(
                      //   alignment: Alignment.bottomCenter,
                      //   fit: BoxFit.scaleDown,
                      //   image: AssetImage(
                      //     "assets/images/pngfuel.com-18.png",
                      //   ),
                      // ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 90,
                            ),
                            Text(
                              "Warning",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Please do not the click thefirst two \nbuttons after registration on restarting",
                          style: GoogleFonts.lato(
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
                        Image.asset(
                          "assets/images/pngfuel.com-18.png",
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}

class Fastandfu extends StatefulWidget {
  final Storage storage;
  final String thank;
  final String thanktwo;

  const Fastandfu({Key key, this.storage, this.thank, this.thanktwo})
      : super(key: key);

  @override
  _FastandfuState createState() => _FastandfuState();
}

class _FastandfuState extends State<Fastandfu> {
  String message;
  String state;
  Future<Directory> _appDocDir;

  @override
  void initState() {
    super.initState();
    widget.storage.readData().then((String value) {
      setState(() {
        state = value;
      });
    });
  }

  Future<File> writeData() async {
    setState(() {
      state = message;
      // message = widget.thank;
    });

    return widget.storage.writeData(state);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('${state ?? "File is emplt"}'),
            FutureBuilder<Directory>(
              future: _appDocDir,
              builder:
                  (BuildContext context, AsyncSnapshot<Directory> snapshot) {
                Text text = Text('');
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    text = Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    text = Text('Path: ${snapshot.data.path}');
                  } else {
                    text = Text('Unavailable');
                  }
                }
                return new Container(
                  child: text,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Storage {
  Future<String> get localPath async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }

  Future<File> get localFile async {
    final path = await localPath;
    return File('$path/db.txt');
  }

  Future<File> get localFileusername async {
    final path = await localPath;
    return File('$path/username.txt');
  }

  Future<File> get localFilelastname async {
    final path = await localPath;
    return File('$path/lastname.txt');
  }

  Future<File> get localFilefirstname async {
    final path = await localPath;
    return File('$path/firstname.txt');
  }

  Future<File> get localFilecontactnumber async {
    final path = await localPath;
    return File('$path/contactnumber.txt');
  }

  Future<File> get localFileareapincode async {
    final path = await localPath;
    return File('$path/pincode.txt');
  }

  Future<File> get localFileemail async {
    final path = await localPath;
    return File('$path/email.txt');
  }

  Future<File> get localFilepass async {
    final path = await localPath;
    return File('$path/pass.txt');
  }

  Future<File> get localFiledate async {
    final path = await localPath;
    return File('$path/date.txt');
  }

  Future<File> get localFileaddon1 async {
    final path = await localPath;
    return File('$path/addone1.txt');
  }

  Future<File> get localFileaddontwo async {
    final path = await localPath;
    return File('$path/addon2.txt');
  }

  Future<String> readData() async {
    try {
      final file = await localFile;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> readDatausername() async {
    try {
      final file = await localFileusername;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> readDatalastname() async {
    try {
      final file = await localFilelastname;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> readDatafirstname() async {
    try {
      final file = await localFilefirstname;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> readDatacontact() async {
    try {
      final file = await localFilecontactnumber;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> readDatapass() async {
    try {
      final file = await localFilepass;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> readDatadate() async {
    try {
      final file = await localFiledate;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> readDataemail() async {
    try {
      final file = await localFileemail;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> readDataarea() async {
    try {
      final file = await localFileareapincode;
      String body = await file.readAsString();

      return body;
    } catch (e) {
      return e.toString();
    }
  }

  // Future<String> readDataadd() async {
  //   try {
  //     final file = await localFileaddon1;
  //     String body = await file.readAsString();

  //     return body;
  //   } catch (e) {
  //     return e.toString();
  //   }
  // }

  // Future<String> readDataaddonetwo() async {
  //   try {
  //     final file = await localFileaddontwo;
  //     String body = await file.readAsString();

  //     return body;
  //   } catch (e) {
  //     return e.toString();
  //   }
  // }

  Future<File> writeData(String data) async {
    final file = await localFile;
    return file.writeAsString("$data");
  }

  Future<File> writeDatausername(String data) async {
    final file = await localFileusername;
    return file.writeAsString("$data");
  }

  Future<File> writeDatalastname(String data) async {
    final file = await localFilelastname;
    return file.writeAsString("$data");
  }

  Future<File> writeDatafirstname(String data) async {
    final file = await localFilefirstname;
    return file.writeAsString("$data");
  }

  Future<File> writeDatacontactnumber(String data) async {
    final file = await localFilecontactnumber;
    return file.writeAsString("$data");
  }

  Future<File> writeDataemail(String data) async {
    final file = await localFileemail;
    return file.writeAsString("$data");
  }

  Future<File> writeDatadate(String data) async {
    final file = await localFiledate;
    return file.writeAsString("$data");
  }

  Future<File> writeDatapincode(String data) async {
    final file = await localFileareapincode;
    return file.writeAsString("$data");
  }

  Future<File> writeDatapassword(String data) async {
    final file = await localFilepass;
    return file.writeAsString("$data");
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
