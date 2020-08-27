import 'package:flutter/material.dart';

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  var _controller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          savename();
        },
      ),
    );
  }

  void savename() {
    String name = _controller.text;
    saveNamePrefrences(name).then((bool commited) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondRoute()),
      );
    });
  }
}

Future<bool> saveNamePrefrences(String name) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setString("name", name);

  return preferences.commit();
}

Future<String> getNamePrefrences() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String name = preferences.getString("name");

  return name;
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  String _name = "";
  @override
  void initState() {
    getNamePrefrences().then(updateName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SafeArea(
                child: Container(
              height: 400,
              color: Colors.red,
              child: Material(
                child: Text(_name),
              ),
            )),
          ],
        ));
  }

  void updateName(String name) {
    setState(() {
      this._name = name;
    });
  }
}
