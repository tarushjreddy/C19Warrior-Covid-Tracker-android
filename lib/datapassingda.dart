import 'package:flutter/material.dart';

class dataextraction extends StatelessWidget {
  String sex = 'i love sex';

  @override
  Widget build(BuildContext context) {
    return Container(child: RaisedButton(onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(sunnyleone: sex),
        ),
      );
    }));
  }
}

class DetailScreen extends StatefulWidget {
  final String sunnyleone;

  const DetailScreen({Key key, this.sunnyleone}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          height: 500,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              RaisedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => finalscreen(
                      finalword: widget.sunnyleone,
                    ),
                  ),
                );
              })
            ],
          )),
    );
  }
}

class finalscreen extends StatefulWidget {
  final String finalword;

  const finalscreen({Key key, this.finalword}) : super(key: key);
  @override
  _finalscreenState createState() => _finalscreenState();
}

class _finalscreenState extends State<finalscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.finalword),
    );
  }
}
