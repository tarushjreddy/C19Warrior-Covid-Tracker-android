import 'package:flutter/material.dart';
import 'main.dart';
import 'myheader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class Roundedbox extends StatefulWidget {
  final String hinttext;
  final IconData icosn;

  final ValueChanged<String> onChanged;
  final IconData lck;
  const Roundedbox({
    Key key,
    this.onChanged,
    this.hinttext,
    this.icosn,
    this.lck,
  }) : super(key: key);

  @override
  _RoundedboxState createState() => _RoundedboxState();
}

class _RoundedboxState extends State<Roundedbox> {
  final _formKey = GlobalKey<FormState>();
  String name;
  @override
  Widget build(BuildContext context) {
    return Textfeildcontainer(
      child: Formfinal(),
    );
  }
}

class Textfeildcontainer extends StatefulWidget {
  final Widget child;
  const Textfeildcontainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  _TextfeildcontainerState createState() => _TextfeildcontainerState();
}

class _TextfeildcontainerState extends State<Textfeildcontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Colors.red[100],
          ),
        ],
      ),
      child: widget.child,
    );
  }
}

class Formfinal extends StatefulWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  _FormfinalState createState() => _FormfinalState();
}

class _FormfinalState extends State<Formfinal> {
  var _formkey;
  String logo;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            suffixIcon: Icon(
              Icons.lock,
              color: Colors.red,
            ),
            hintText: "hinttext",
            border: InputBorder.none,
          ),
          validator: (String value) {
            if (value.isEmpty) {
              return "email";
            }
            return null;
          },
        )
      ]),
    );
  }
}
