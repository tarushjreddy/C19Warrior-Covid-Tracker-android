import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constant.dart';

class Counter extends StatelessWidget {
  final String number;
  final Color color;
  final String title;

  const Counter({
    Key key,
    this.number,
    this.color,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 24,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color.withOpacity(.26),
            ),
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(
                    width: 2,
                    color: color,
                  )),
            ),
          ),
        ),
        SizedBox(
          width: 45,
        ),
        Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500
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
          width: 50,
        ),
        Text(
          "$number",
          style: GoogleFonts.poppins(
              fontSize: 25, color: color, fontWeight: FontWeight.w500
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
