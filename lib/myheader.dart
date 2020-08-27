import 'package:C19warrior/settings.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'main.dart';
import 'constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'revaling.dart';

class MyHeader extends StatelessWidget {
  final String username;
  final String image;
  final String textTop;
  final String textBottom;
  final int colorr;
  final int cur;
  final String fontfam;
  const MyHeader({
    Key key,
    this.image,
    this.textTop,
    this.textBottom,
    this.colorr,
    LinearGradient gradient,
    Container child,
    this.cur,
    this.fontfam,
    this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 1, top: 50, right: 10),
        height: 300,
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
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage(
              "assets/images/virus.png",
            ),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Colors.blue,
            ),
          ],
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
            //         "assets/icons/om.png",
            //         width: 20,
            //         height: 20,
            //         color: Colors.black,
            //       )),
            // ),
            SizedBox(
              height: 3,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    image,
                    width: 230,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topRight,
                  ),
                  Positioned(
                    top: 5,
                    left: 175,
                    child: Text(
                      "$textTop \n\t\t\t$textBottom",
                      style: GoogleFonts.poppins(
                          fontSize: 25,
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
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 3, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return null;
  }
}
