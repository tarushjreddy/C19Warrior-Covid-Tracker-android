import 'package:flutter/material.dart';
import 'main.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Dataextraction extends StatefulWidget {
  @override
  _DataextractionState createState() => _DataextractionState();
}

class _DataextractionState extends State<Dataextraction> {
  String details;
  String nameid;

  void getData() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/indiacovid/IndiaCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);

    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    nameid = data['Name'];
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print("build state enabled");
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: 300,
        color: Colors.blue,
        child: Column(
          children: <Widget>[
            Text('data : $details'),
            Text('data : $nameid'),
          ],
        ),
      ),
    ));
  }
}
