import 'dart:ffi';

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

class detaileddata extends StatefulWidget {
  @override
  _detaileddataState createState() => _detaileddataState();
}

class _detaileddataState extends State<detaileddata> {
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

  String detailsmh;
  String nameidmh;
  String totalcasemh;
  String totalrecoveredmh;
  String totaldeathmh;
  String totalcasepdmh;
  String totalrecoveredpdmh;
  String totaldeathpdmh;
  String locationmh;
  String totalcaseomh;
  String totalrecoveredrmh;
  String totaldeathwmh;

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

  String detailspa;
  String nameidap;
  String totalcaseap;
  String totalrecoveredap;
  String totaldeathap;
  String totalcasepdap;
  String totalrecoveredpdap;
  String totaldeathpdap;
  String locationap;
  String totalcaseoap;
  String totalrecoveredrap;
  String totaldeathwap;

  String detailstn;
  String nameidtn;
  String totalcasetn;
  String totalrecoveredtn;
  String totaldeathtn;
  String totalcasepdtn;
  String totalrecoveredpdtn;
  String totaldeathpdtn;
  String locationtn;
  String totalcaseotn;
  String totalrecoveredrtn;
  String totaldeathwtn;

  String detailskl;
  String nameidkl;
  String totalcasekl;
  String totalrecoveredkl;
  String totaldeathkl;
  String totalcasepdkl;
  String totalrecoveredpdkl;
  String totaldeathpdkl;
  String locationkl;
  String totalcaseokl;
  String totalrecoveredrkl;
  String totaldeathwkl;

  String detailsts;
  String nameidts;
  String totalcasets;
  String totalrecoveredts;
  String totaldeathts;
  String totalcasepdts;
  String totalrecoveredpdts;
  String totaldeathpdts;
  String locationts;
  String totalcaseots;
  String totalrecoveredrts;
  String totaldeathwts;

  // String details;
  // String nameid;
  // String totalcase;
  // String totalrecovered;
  // String totaldeath;
  // String totalcasepd;
  // String totalrecoveredpd;
  // String totaldeathpd;
  // String location;
  // String totalcaseo;
  // String totalrecoveredr;
  // String totaldeathw;

  String detailsga;
  String nameidga;
  String totalcasega;
  String totalrecoveredga;
  String totaldeathga;
  String totalcasepdga;
  String totalrecoveredpdga;
  String totaldeathpdga;
  String locationga;
  String totalcaseoga;
  String totalrecoveredrga;
  String totaldeathwga;

  String detailsau;
  String nameidau;
  String totalcaseau;
  String totalrecoveredau;
  String totaldeathau;
  String totalcasepdau;
  String totalrecoveredpdau;
  String totaldeathpdau;
  String locationau;
  String totalcaseoau;
  String totalrecoveredrau;
  String totaldeathwau;

  String detailsup;
  String nameidup;
  String totalcaseup;
  String totalrecoveredup;
  String totaldeathup;
  String totalcasepdup;
  String totalrecoveredpdup;
  String totaldeathpdup;
  String locationup;
  String totalcaseoup;
  String totalrecoveredrup;
  String totaldeathwup;

  String detailsrj;
  String nameidrj;
  String totalcaserj;
  String totalrecoveredrj;
  String totaldeathrj;
  String totalcasepdrj;
  String totalrecoveredpdrj;
  String totaldeathpdrj;
  String locationrj;
  String totalcaseorj;
  String totalrecoveredrrj;
  String totaldeathwrj;

  String detailswb;
  String nameidwb;
  String totalcasewb;
  String totalrecoveredwb;
  String totaldeathwb;
  String totalcasepdwb;
  String totalrecoveredpdwb;
  String totaldeathpdwb;
  String locationwb;
  String totalcaseowb;
  String totalrecoveredrwb;
  String totaldeathwwb;

  String detailspb;
  String nameidpb;
  String totalcasepb;
  String totalrecoveredpb;
  String totaldeathpb;
  String totalcasepdpb;
  String totalrecoveredpdpb;
  String totaldeathpdpb;
  String locationpb;
  String totalcaseopb;
  String totalrecoveredrpb;
  String totaldeathwpb;

  String detailshr;
  String nameidhr;
  String totalcasehr;
  String totalrecoveredhr;
  String totaldeathhr;
  String totalcasepdhr;
  String totalrecoveredpdhr;
  String totaldeathpdhr;
  String locationhr;
  String totalcaseohr;
  String totalrecoveredrhr;
  String totaldeathwhr;

  String detailsjh;
  String nameidjh;
  String totalcasejh;
  String totalrecoveredjh;
  String totaldeathjh;
  String totalcasepdjh;
  String totalrecoveredpdjh;
  String totaldeathpdjh;
  String locationjh;
  String totalcaseojh;
  String totalrecoveredrjh;
  String totaldeathwjh;

  String detailsjm;
  String nameidjm;
  String totalcasejm;
  String totalrecoveredjm;
  String totaldeathjm;
  String totalcasepdjm;
  String totalrecoveredpdjm;
  String totaldeathpdjm;
  String locationjm;
  String totalcaseojm;
  String totalrecoveredrjm;
  String totaldeathwjm;

  String detailsmd;
  String nameidmd;
  String totalcasemd;
  String totalrecoveredmd;
  String totaldeathmd;
  String totalcasepdmd;
  String totalrecoveredpdmd;
  String totaldeathpdmd;
  String locationmd;
  String totalcaseomd;
  String totalrecoveredrmd;
  String totaldeathwmd;

  String detailsgj;
  String nameidgj;
  String totalcasegj;
  String totalrecoveredgj;
  String totaldeathgj;
  String totalcasepdgj;
  String totalrecoveredpdgj;
  String totaldeathpdgj;
  String locationgj;
  String totalcaseogj;
  String totalrecoveredrgj;
  String totaldeathwgj;

  String detailsbr;
  String nameidbr;
  String totalcasebr;
  String totalrecoveredbr;
  String totaldeathbr;
  String totalcasepdbr;
  String totalrecoveredpdbr;
  String totaldeathpdbr;
  String locationbr;
  String totalcaseobr;
  String totalrecoveredrbr;
  String totaldeathwbr;

  String detailsch;
  String nameidch;
  String totalcasech;
  String totalrecoveredch;
  String totaldeathch;
  String totalcasepdch;
  String totalrecoveredpdch;
  String totaldeathpdch;
  String locationch;
  String totalcaseoch;
  String totalrecoveredrch;
  String totaldeathwch;

  String detailsuk;
  String nameiduk;
  String totalcaseuk;
  String totalrecovereduk;
  String totaldeathuk;
  String totalcasepduk;
  String totalrecoveredpduk;
  String totaldeathpduk;
  String locationuk;
  String totalcaseouk;
  String totalrecoveredruk;
  String totaldeathwuk;

  String detailsod;
  String nameidod;
  String totalcaseod;
  String totalrecoveredod;
  String totaldeathod;
  String totalcasepdod;
  String totalrecoveredpdod;
  String totaldeathpdod;
  String locationod;
  String totalcaseood;
  String totalrecoveredrod;
  String totaldeathwod;

//  String details;
//   String nameid;
//   String totalcase;
//   String totalrecovered;
//   String totaldeath;
//   String totalcasepd;
//   String totalrecoveredpd;
//   String totaldeathpd;
//   String location;
//   String totalcaseo;
//   String totalrecoveredr;
//   String totaldeathw;
  void getgoaCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/goacasedata/GoaCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailsga = data['TotalRecoveredga'];
    print(data.length);
    locationga = data['Namega'];
    totalcasega = data['TotalCasesga'];
    totaldeathga = data['TotalDeathsga'];
    totalrecoveredga = data['TotalRecoveredga'];
    totalcasepdga = data['TotalIncga'];
    totaldeathpdga = data['TotalDecga'];
    totalrecoveredpdga = data['TotalRecga'];
    totalcaseoga = data['TotalCasesoga'];
    totaldeathwga = data['TotalDeathswga'];
    totalrecoveredrga = data['TotalRecoveredrga'];
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

  void getarunachalCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/arunachalpradeshcasedata/arunachalpradeshcasedata/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailsau = data['TotalRecoveredau'];
    print(data.length);
    locationau = data['Nameau'];
    totalcaseau = data['TotalCasesau'];
    totaldeathau = data['TotalDeathsau'];
    totalrecoveredau = data['TotalRecoveredau'];
    totalcasepdau = data['TotalIncau'];
    totaldeathpdau = data['TotalDecau'];
    totalrecoveredpdau = data['TotalRecau'];
    totalcaseoau = data['TotalCasesoau'];
    totaldeathwau = data['TotalDeathswau'];
    totalrecoveredrau = data['TotalRecoveredrau'];
    setState(() {});
  }

  void getupCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/uttarpradeshcasedata/UttarPradeshCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationup = data['Nameup'];
    totalcaseup = data['TotalCasesup'];
    totaldeathup = data['TotalDeathsup'];
    totalrecoveredup = data['TotalRecoveredup'];
    totalcasepdup = data['TotalIncup'];
    totaldeathpdup = data['TotalDecup'];
    totalrecoveredpdup = data['TotalRecup'];
    totalcaseoup = data['TotalCasesoup'];
    totaldeathwup = data['TotalDeathswup'];
    totalrecoveredrup = data['TotalRecoveredrup'];
    setState(() {});
  }

  void getjharkanCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/jharkhandcasedata/jharkandcasedata/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationjh = data['Namejd'];
    totalcasejh = data['TotalCasesjd'];
    totaldeathjh = data['TotalDeathsjd'];
    totalrecoveredjh = data['TotalRecoveredjd'];
    totalcasepdjh = data['TotalIncjd'];
    totaldeathpdjh = data['TotalDecjd'];
    totalrecoveredpdjh = data['TotalRecjd'];
    totalcaseojh = data['TotalCasesojd'];
    totaldeathwjh = data['TotalDeathswjd'];
    totalrecoveredrjh = data['TotalRecoveredrjd'];
    setState(() {});
  }

  void getbiharCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/biharcasedata/BhiarCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationbr = data['Namebr'];
    totalcasebr = data['TotalCasesbr'];
    totaldeathbr = data['TotalDeathsbr'];
    totalrecoveredbr = data['TotalRecoveredbr'];
    totalcasepdbr = data['TotalIncbr'];
    totaldeathpdbr = data['TotalDecbr'];
    totalrecoveredpdbr = data['TotalRecbr'];
    totalcaseobr = data['TotalCasesobr'];
    totaldeathwbr = data['TotalDeathswbr'];
    totalrecoveredrbr = data['TotalRecoveredrbr'];
    setState(() {});
  }

  void getodishaCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/odisacasedata/OdishaCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailsod = data['TotalRecovered'];
    print(data.length);
    locationod = data['Nameod'];
    totalcaseod = data['TotalCasesod'];
    totaldeathod = data['TotalDeathsod'];
    totalrecoveredod = data['TotalRecoveredod'];
    totalcasepdod = data['TotalIncod'];
    totaldeathpdod = data['TotalDecod'];
    totalrecoveredpdod = data['TotalRecod'];
    totalcaseood = data['TotalCasesood'];
    totaldeathwod = data['TotalDeathswod'];
    totalrecoveredrod = data['TotalRecoveredrod'];
    setState(() {});
  }

  void getwbCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/westbengalcasedata/wbcasedata/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailswb = data['TotalRecovered'];
    print(data.length);
    locationwb = data['Namewb'];
    totalcasewb = data['TotalCaseswb'];
    totaldeathwb = data['TotalDeathswb'];
    totalrecoveredwb = data['TotalRecoveredwb'];
    totalcasepdwb = data['TotalIncwb'];
    totaldeathpdwb = data['TotalDecwb'];
    totalrecoveredpdwb = data['TotalRecwb'];
    totalcaseowb = data['TotalCasesowb'];
    totaldeathwwb = data['TotalDeathswwb'];
    totalrecoveredrwb = data['TotalRecoveredrwb'];
    setState(() {});
  }

  void getmdhyaCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/madhyapradeshcasedata/MadhyapradeshCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationmd = data['Namemd'];
    totalcasemd = data['TotalCasesmd'];
    totaldeathmd = data['TotalDeathsmd'];
    totalrecoveredmd = data['TotalRecoveredmd'];
    totalcasepdmd = data['TotalIncmd'];
    totaldeathpdmd = data['TotalDecmd'];
    totalrecoveredpdmd = data['TotalRecmd'];
    totalcaseomd = data['TotalCasesomd'];
    totaldeathwmd = data['TotalDeathswmd'];
    totalrecoveredrmd = data['TotalRecoveredrmd'];
    setState(() {});
  }

  void getukCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/uttarakhandcasedata/MadhyapradeshCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailsuk = data['TotalRecovered'];
    print(data.length);
    locationuk = data['Nameuk'];
    totalcaseuk = data['TotalCasesuk'];
    totaldeathuk = data['TotalDeathsuk'];
    totalrecovereduk = data['TotalRecovereduk'];
    totalcasepduk = data['TotalIncuk'];
    totaldeathpduk = data['TotalDecuk'];
    totalrecoveredpduk = data['TotalRecuk'];
    totalcaseouk = data['TotalCasesouk'];
    totaldeathwuk = data['TotalDeathswuk'];
    totalrecoveredruk = data['TotalRecoveredruk'];
    setState(() {});
  }

  void getrjCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/rajasthancasedata/RajasthanCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailsrj = data['TotalRecovered'];
    print(data.length);
    locationrj = data['Namerj'];
    totalcaserj = data['TotalCasesrj'];
    totaldeathrj = data['TotalDeathsrj'];
    totalrecoveredrj = data['TotalRecoveredrj'];
    totalcasepdrj = data['TotalIncrj'];
    totaldeathpdrj = data['TotalDecrj'];
    totalrecoveredpdrj = data['TotalRecrj'];
    totalcaseorj = data['TotalCasesorj'];
    totaldeathwrj = data['TotalDeathswrj'];
    totalrecoveredrrj = data['TotalRecoveredrrj'];
    setState(() {});
  }

  void getpbCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/punjabcasedata/MadhyapradeshCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailspb = data['TotalRecovered'];
    print(data.length);
    locationpb = data['Namepb'];
    totalcasepb = data['TotalCasespb'];
    totaldeathpb = data['TotalDeathspb'];
    totalrecoveredpb = data['TotalRecoveredpb'];
    totalcasepdpb = data['TotalIncpb'];
    totaldeathpdpb = data['TotalDecpb'];
    totalrecoveredpdpb = data['TotalRecpb'];
    totalcaseopb = data['TotalCasesopb'];
    totaldeathwpb = data['TotalDeathswpb'];
    totalrecoveredrpb = data['TotalRecoveredrpb'];
    setState(() {});
  }

  void gethrCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/harynanacasedata/haryanacasedata/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailshr = data['TotalRecovered'];
    print(data.length);
    locationhr = data['Namehr'];
    totalcasehr = data['TotalCaseshr'];
    totaldeathhr = data['TotalDeathshr'];
    totalrecoveredhr = data['TotalRecoveredhr'];
    totalcasepdhr = data['TotalInchr'];
    totaldeathpdhr = data['TotalDechr'];
    totalrecoveredpdhr = data['TotalRechr'];
    totalcaseohr = data['TotalCasesohr'];
    totaldeathwhr = data['TotalDeathswhr'];
    totalrecoveredrhr = data['TotalRecoveredrhr'];
    setState(() {});
  }

  void getgjCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/gujuratcasedata/gujuratcasereport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailsgj = data['TotalRecoveredgj'];
    print(data.length);
    locationgj = data['Namegj'];
    totalcasegj = data['TotalCasesgj'];
    totaldeathgj = data['TotalDeathsgj'];
    totalrecoveredgj = data['TotalRecoveredgj'];
    totalcasepdgj = data['TotalIncgj'];
    totaldeathpdgj = data['TotalDecgj'];
    totalrecoveredpdgj = data['TotalRecgj'];
    totalcaseogj = data['TotalCasesogj'];
    totaldeathwgj = data['TotalDeathswgj'];
    totalrecoveredrgj = data['TotalRecoveredrgj'];
    setState(() {});
  }

  void getchCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/chattisghardcasedata/chattisghardcasedata/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationch = data['Namech'];
    totalcasech = data['TotalCasesch'];
    totaldeathch = data['TotalDeathsch'];
    totalrecoveredch = data['TotalRecoveredch'];
    totalcasepdch = data['TotalIncch'];
    totaldeathpdch = data['TotalDecch'];
    totalrecoveredpdch = data['TotalRecch'];
    totalcaseoch = data['TotalCasesoch'];
    totaldeathwch = data['TotalDeathswch'];
    totalrecoveredrch = data['TotalRecoveredrch'];
    setState(() {});
  }

  void getjmCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/jammukashcasedata/JammmuKashmir/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationjm = data['Namejm'];
    totalcasejm = data['TotalCasesjm'];
    totaldeathjm = data['TotalDeathsjm'];
    totalrecoveredjm = data['TotalRecoveredjm'];
    totalcasepdjm = data['TotalIncjm'];
    totaldeathpdjm = data['TotalDecjm'];
    totalrecoveredpdjm = data['TotalRecjm'];
    totalcaseojm = data['TotalCasesojm'];
    totaldeathwjm = data['TotalDeathswjm'];
    totalrecoveredrjm = data['TotalRecoveredrjm'];
    setState(() {});
  }

  void getbrCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/biharcasedata/BhiarCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationbr = data['Namebr'];
    totalcasebr = data['TotalCasesbr'];
    totaldeathbr = data['TotalDeathsbr'];
    totalrecoveredbr = data['TotalRecoveredbr'];
    totalcasepdbr = data['TotalIncbr'];
    totaldeathpdbr = data['TotalDecbr'];
    totalrecoveredpdbr = data['TotalRecbr'];
    totalcaseobr = data['TotalCasesobr'];
    totaldeathwbr = data['TotalDeathswbr'];
    totalrecoveredrbr = data['TotalRecoveredrbr'];
    setState(() {});
  }

  void getkerlaCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/kerlacoviddata/KerlaCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCaseskl']);
    print(data['TotalDeaths']);
    detailskl = data['TotalRecovered'];
    print(data.length);
    locationkl = data['Namekl'];
    totalcasekl = data['TotalCaseskl'];
    totaldeathkl = data['TotalDeathskl'];
    totalrecoveredkl = data['TotalRecoveredkl'];
    totalcasepdkl = data['TotalInckl'];
    totaldeathpdkl = data['TotalDeckl'];
    totalrecoveredpdkl = data['TotalReckl'];
    totalcaseokl = data['TotalCasesokl'];
    totaldeathwkl = data['TotalDeathswkl'];
    totalrecoveredrkl = data['TotalRecoveredrkl'];
    setState(() {});
  }

  void gettelanganaCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/telanganacoviddata/TelanganaCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationts = data['Namets'];
    totalcasets = data['TotalCasests'];
    totaldeathts = data['TotalDeathsts'];
    totalrecoveredts = data['TotalRecoveredts'];
    totalcasepdts = data['TotalIncts'];
    totaldeathpdts = data['TotalDects'];
    totalrecoveredpdts = data['TotalRects'];
    totalcaseots = data['TotalCasesots'];
    totaldeathwts = data['TotalDeathswts'];
    totalrecoveredrts = data['TotalRecoveredrts'];
    setState(() {});
  }

  void gettamilnaduCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/tamilnaducoviddata/TamilnaduCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    details = data['TotalRecovered'];
    print(data.length);
    locationtn = data['Nametn'];
    totalcasetn = data['TotalCasestn'];
    totaldeathtn = data['TotalDeathstn'];
    totalrecoveredtn = data['TotalRecoveredtn'];
    totalcasepdtn = data['TotalInctn'];
    totaldeathpdtn = data['TotalDectn'];
    totalrecoveredpdtn = data['TotalRectn'];
    totalcaseotn = data['TotalCasesotn'];
    totaldeathwtn = data['TotalDeathswtn'];
    totalrecoveredrtn = data['TotalRecoveredrtn'];
    setState(() {});
  }

  void getmaharastraCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/maharashtracoviddata/MaharastraCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCases']);
    print(data['TotalDeaths']);
    detailsmh = data['TotalRecoveredmh'];
    print(data.length);
    locationmh = data['Namemh'];
    totalcasemh = data['TotalCasesmh'];
    totaldeathmh = data['TotalDeathsmh'];
    totalrecoveredmh = data['TotalRecoveredmh'];
    totalcasepdmh = data['TotalIncmh'];
    totaldeathpdmh = data['TotalDecmh'];
    totalrecoveredpdmh = data['TotalRecmh'];
    totalcaseomh = data['TotalCasesomh'];
    totaldeathwmh = data['TotalDeathswmh'];
    totalrecoveredrmh = data['TotalRecoveredrmh'];
    setState(() {});
  }

  void getapCase() async {
    Response response = await get(
        'http://my-json-server.typicode.com/developerking9/andhrapradeshcasedata/IndiaCaseReport/1');
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    print("phone number of the developer");
    print(data['TotalCasesap']);
    print(data['TotalDeathsap']);
    details = data['TotalRecoveredap'];
    print(data.length);
    locationap = data['Nameap'];
    totalcaseap = data['TotalCasesap'];
    totaldeathap = data['TotalDeathsap'];
    totalrecoveredap = data['TotalRecoveredap'];
    totalcasepdap = data['TotalIncap'];
    totaldeathpdap = data['TotalDecap'];
    totalrecoveredpdap = data['TotalRecap'];
    totalcaseoap = data['TotalCasesoap'];
    totaldeathwap = data['TotalDeathswap'];
    totalrecoveredrap = data['TotalRecoveredrap'];
    setState(() {});
  }

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCase();
    getKarnataCase();
    getapCase();
    gettelanganaCase();
    gettamilnaduCase();
    getkerlaCase();
    getmaharastraCase();
    getarunachalCase();
    getrjCase();
    getupCase();
    getgjCase();
    getodishaCase();
    getbiharCase();
    getgoaCase();
    gethrCase();
    getjharkanCase();
    getukCase();
    getwbCase();
    getchCase();
    getbiharCase();
    gethrCase();
    getjmCase();
    getpbCase();
    getmdhyaCase();
    getodishaCase();

    // getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          child: Column(children: <Widget>[
            SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
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
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                        width: 100,
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
                                        width: 60,
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.yellow,
                                  Colors.red,
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
                                "assets/images/pngfuel.com-5.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationka',
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
                                        number: '$totalcaseka',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseoka',
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
                                        number: '$totaldeathka',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwka',
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
                                        number: '$totalrecoveredka',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrka',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.green,
                                  Colors.green[50],
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
                                "assets/images/ap.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '$locationap',
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
                                        number: '$totalcaseap',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseoap',
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
                                        number: '$totaldeathap',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwap',
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
                                        number: '$totalrecoveredap',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrap',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.pink,
                                  Colors.pink[50],
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
                                "assets/images/ts.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationts',
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
                                        number: '$totalcasets',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseots',
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
                                        number: '$totaldeathts',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwts',
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
                                        number: '$totalrecoveredts',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrts',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.green[800],
                                  Colors.green[100],
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
                                "assets/images/SeekPng.com_samai-png_8715677.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 1,
                                  ),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '$locationtn',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
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
                                        number: '$totalcasetn',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseotn',
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
                                        number: '$totaldeathtn',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwtn',
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
                                        number: '$totalrecoveredtn',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrtn',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.red,
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
                            image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/images/kisspng-kozhikode-kochi-bihar-map-detective-malayalam-5ac8b35663b155.4877041115231025504084.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 30,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationkl',
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
                                        number: '$totalcasekl',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseokl',
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
                                        number: '$totaldeathkl',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwkl',
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
                                        number: '$totalrecoveredkl',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrkl',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.orange,
                                  Colors.orangeAccent,
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
                                "assets/images/maharast.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 30,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationmh',
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
                                        number: '$totalcasemh',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseomh',
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
                                        number: '$totaldeathmh',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwmh',
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
                                        number: '$totalrecoveredmh',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrmh',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.red,
                                  Colors.green[50],
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
                                "assets/images/pngwave.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '$locationup',
                                        style: GoogleFonts.poppins(
                                          fontSize: 22,
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
                                        number: '$totalcaseup',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseoup',
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
                                        number: '$totaldeathup',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwup',
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
                                        number: '$totalrecoveredup',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrup',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.yellow,
                                  Colors.green[50],
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
                                "assets/images/kisspng-balaghat-district-hoshangabad-bhopal-neemuch-wikip-5af889e61eef23.8213013915262376701267.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationmd',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
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
                                        number: '$totalcasemd',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseomd',
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
                                        number: '$totaldeathmd',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwmd',
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
                                        number: '$totalrecoveredmd',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrmd',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.red,
                                  Colors.yellow[100],
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
                                "assets/images/pngguru.com.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationrj',
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
                                        number: '$totalcaserj',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseorj',
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
                                        number: '$totaldeathrj',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwrj',
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
                                        number: '$totalrecoveredrj',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrrj',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.black,
                                  Colors.white,
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
                                "assets/images/NicePng_india-map-png-image_8718163.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                        '$locationga',
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
                                        number: '$totalcasega',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseoga',
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
                                        number: '$totaldeathga',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwga',
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
                                        number: '$totalrecoveredga',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrga',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.blue[900],
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
                            image: DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.contain,
                              image: AssetImage(
                                "assets/images/pngbarn.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationuk',
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
                                        number: '$totalcaseuk',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseouk',
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
                                        number: '$totaldeathuk',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwuk',
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
                                        number: '$totalrecovereduk',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredruk',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.purple,
                                  Colors.purple[50],
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
                                "assets/images/pngguru.com-2.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 10,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationwb',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
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
                                        number: '$totalcasewb',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseowb',
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
                                        number: '$totaldeathwb',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwwb',
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
                                        number: '$totalrecoveredwb',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrwb',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.orange,
                                  Colors.orange[50],
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
                                "assets/images/pngfuel.com-6.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 40,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationgj',
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
                                        number: '$totalcasegj',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseogj',
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
                                        number: '$totaldeathgj',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwgj',
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
                                        number: '$totalrecoveredgj',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrgj',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.tealAccent,
                                  Colors.teal[50],
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
                                "assets/images/map11.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 0,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationau',
                                        style: GoogleFonts.poppins(
                                          fontSize: 17,
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
                                        number: '$totalcaseau',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseoau',
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
                                        number: '$totaldeathau',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwau',
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
                                        number: '$totalrecoveredau',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrau',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.deepOrange,
                                  Colors.deepOrange[100],
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
                                "assets/images/PngItem_1930125.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                        '$locationpb',
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
                                        number: '$totalcasepb',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseopb',
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
                                        number: '$totaldeathpb',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwpb',
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
                                        number: '$totalrecoveredpb',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrpb',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.blue,
                                  Colors.white,
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
                                "assets/images/kisspng-haryana-map-punjab-hindi-ssc-combined-graduate-lev-5b2bee23e679a4.506455961529605667944.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 30,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationhr',
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
                                        number: '$totalcasehr',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseohr',
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
                                        number: '$totaldeathhr',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwhr',
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
                                        number: '$totalrecoveredhr',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrhr',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.blueGrey,
                                  Colors.blueGrey[50],
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
                                "assets/images/kisspng-united-states-chhattisgarh-police-government-of-ch-5b2a1c47939d57.9644418015294864076046.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 40,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationch',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
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
                                        number: '$totalcasech',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseoch',
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
                                        number: '$totaldeathch',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwch',
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
                                        number: '$totalrecoveredch',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrch',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.blue,
                                  Colors.green[50],
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
                                "assets/images/kindpng_5374086.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 30,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationjh',
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
                                        number: '$totalcasejh',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseojh',
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
                                        number: '$totaldeathjh',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwjh',
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
                                        number: '$totalrecoveredjh',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrjh',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.purple,
                                  Colors.red,
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
                                "assets/images/pngwave-2.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 50,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationod',
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
                                        number: '$totalcaseod',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseood',
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
                                        number: '$totaldeathod',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwod',
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
                                        number: '$totalrecoveredod',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrod',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 200,
                          width: 350,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(30),
                            //             image: DecorationImage(
                            // alignment: Alignment.topRight,

                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  // Colors.deepOrange,
                                  Colors.green,
                                  Colors.red,
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
                                "assets/images/kisspng-kashmir-pulwama-district-jammu-shopian-district-po-5b1f6c874cd2a5.0730548815287860553147.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                          width: 350,
                          height: 400,
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
                                    width: 0,
                                  ),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        '$locationjm',
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
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
                                        number: '$totalcasejm',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.purple,
                                        title: "Total Cases",
                                        number: '$totalcaseojm',
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
                                        number: '$totaldeathjm',
                                      ),
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Counter(
                                        color: Colors.red,
                                        title: "Total Deaths",
                                        number: '$totaldeathwjm',
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
                                        number: '$totalrecoveredjm',
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Counter(
                                        color: Colors.green,
                                        title: "Total Recovered",
                                        number: '$totalrecoveredrjm',
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
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 15, top: 0, right: 15, bottom: 0),
                          height: 20,
                          width: 350,
                          // decoration: BoxDecoration(
                          //   // borderRadius: BorderRadius.circular(30),
                          //   //             image: DecorationImage(
                          //   // alignment: Alignment.topRight,

                          //   gradient: LinearGradient(
                          //       begin: Alignment.topLeft,
                          //       end: Alignment.bottomRight,
                          //       colors: [
                          //         Colors.deepOrange,
                          //         Colors.white,
                          //         Colors.green,
                          //       ]),
                          //   boxShadow: [
                          //     BoxShadow(
                          //       offset: Offset(0, 2),
                          //       blurRadius: 9,
                          //       color: Colors.grey,
                          //     ),
                          //   ],
                          //   borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(30),
                          //       topRight: Radius.circular(30),
                          //       bottomLeft: Radius.circular(30),
                          //       bottomRight: Radius.circular(30)),
                          //   image: DecorationImage(
                          //     alignment: Alignment.center,
                          //     fit: BoxFit.contain,
                          //     image: AssetImage(
                          //       "assets/images/india.png",
                          //     ),
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 200,
                  //         width: 350,
                  //         decoration: BoxDecoration(
                  //           // borderRadius: BorderRadius.circular(30),
                  //           //             image: DecorationImage(
                  //           // alignment: Alignment.topRight,

                  //           gradient: LinearGradient(
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //               colors: [
                  //                 // Colors.deepOrange,
                  //                 Colors.yellow,
                  //                 Colors.red,
                  //               ]),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 2),
                  //               blurRadius: 9,
                  //               color: Colors.grey,
                  //             ),
                  //           ],
                  //           borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(30),
                  //               topRight: Radius.circular(30),
                  //               bottomLeft: Radius.circular(30),
                  //               bottomRight: Radius.circular(30)),
                  //           image: DecorationImage(
                  //             alignment: Alignment.center,
                  //             fit: BoxFit.contain,
                  //             image: AssetImage(
                  //               "assets/images/pngfuel.com-5.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 20),
                  //         padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  //         width: 350,
                  //         height: 400,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(30),
                  //           color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 4),
                  //               blurRadius: 10,
                  //               color: Colors.grey[500],
                  //             ),
                  //           ],
                  //         ),
                  //         child: SingleChildScrollView(
                  //           child: Column(children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 SizedBox(
                  //                   width: 30,
                  //                 ),
                  //                 Align(
                  //                     alignment: Alignment.topCenter,
                  //                     child: Text(
                  //                       '$location',
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.blue,
                  //                       ),
                  //                     )),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 30,
                  //             ),
                  //             Column(
                  //               children: <Widget>[
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcase',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcaseo',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeath',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeathw',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecovered',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 60,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecoveredr',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 20,
                  //         width: 350,
                  //         // decoration: BoxDecoration(
                  //         //   // borderRadius: BorderRadius.circular(30),
                  //         //   //             image: DecorationImage(
                  //         //   // alignment: Alignment.topRight,

                  //         //   gradient: LinearGradient(
                  //         //       begin: Alignment.topLeft,
                  //         //       end: Alignment.bottomRight,
                  //         //       colors: [
                  //         //         Colors.deepOrange,
                  //         //         Colors.white,
                  //         //         Colors.green,
                  //         //       ]),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       offset: Offset(0, 2),
                  //         //       blurRadius: 9,
                  //         //       color: Colors.grey,
                  //         //     ),
                  //         //   ],
                  //         //   borderRadius: BorderRadius.only(
                  //         //       topLeft: Radius.circular(30),
                  //         //       topRight: Radius.circular(30),
                  //         //       bottomLeft: Radius.circular(30),
                  //         //       bottomRight: Radius.circular(30)),
                  //         //   image: DecorationImage(
                  //         //     alignment: Alignment.center,
                  //         //     fit: BoxFit.contain,
                  //         //     image: AssetImage(
                  //         //       "assets/images/india.png",
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 200,
                  //         width: 350,
                  //         decoration: BoxDecoration(
                  //           // borderRadius: BorderRadius.circular(30),
                  //           //             image: DecorationImage(
                  //           // alignment: Alignment.topRight,

                  //           gradient: LinearGradient(
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //               colors: [
                  //                 // Colors.deepOrange,
                  //                 Colors.yellow,
                  //                 Colors.red,
                  //               ]),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 2),
                  //               blurRadius: 9,
                  //               color: Colors.grey,
                  //             ),
                  //           ],
                  //           borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(30),
                  //               topRight: Radius.circular(30),
                  //               bottomLeft: Radius.circular(30),
                  //               bottomRight: Radius.circular(30)),
                  //           image: DecorationImage(
                  //             alignment: Alignment.center,
                  //             fit: BoxFit.contain,
                  //             image: AssetImage(
                  //               "assets/images/pngfuel.com-5.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 20),
                  //         padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  //         width: 350,
                  //         height: 400,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(30),
                  //           color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 4),
                  //               blurRadius: 10,
                  //               color: Colors.grey[500],
                  //             ),
                  //           ],
                  //         ),
                  //         child: SingleChildScrollView(
                  //           child: Column(children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 SizedBox(
                  //                   width: 30,
                  //                 ),
                  //                 Align(
                  //                     alignment: Alignment.topCenter,
                  //                     child: Text(
                  //                       '$location',
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.blue,
                  //                       ),
                  //                     )),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 30,
                  //             ),
                  //             Column(
                  //               children: <Widget>[
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcase',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcaseo',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeath',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeathw',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecovered',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 60,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecoveredr',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 20,
                  //         width: 350,
                  //         // decoration: BoxDecoration(
                  //         //   // borderRadius: BorderRadius.circular(30),
                  //         //   //             image: DecorationImage(
                  //         //   // alignment: Alignment.topRight,

                  //         //   gradient: LinearGradient(
                  //         //       begin: Alignment.topLeft,
                  //         //       end: Alignment.bottomRight,
                  //         //       colors: [
                  //         //         Colors.deepOrange,
                  //         //         Colors.white,
                  //         //         Colors.green,
                  //         //       ]),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       offset: Offset(0, 2),
                  //         //       blurRadius: 9,
                  //         //       color: Colors.grey,
                  //         //     ),
                  //         //   ],
                  //         //   borderRadius: BorderRadius.only(
                  //         //       topLeft: Radius.circular(30),
                  //         //       topRight: Radius.circular(30),
                  //         //       bottomLeft: Radius.circular(30),
                  //         //       bottomRight: Radius.circular(30)),
                  //         //   image: DecorationImage(
                  //         //     alignment: Alignment.center,
                  //         //     fit: BoxFit.contain,
                  //         //     image: AssetImage(
                  //         //       "assets/images/india.png",
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 200,
                  //         width: 350,
                  //         decoration: BoxDecoration(
                  //           // borderRadius: BorderRadius.circular(30),
                  //           //             image: DecorationImage(
                  //           // alignment: Alignment.topRight,

                  //           gradient: LinearGradient(
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //               colors: [
                  //                 // Colors.deepOrange,
                  //                 Colors.yellow,
                  //                 Colors.red,
                  //               ]),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 2),
                  //               blurRadius: 9,
                  //               color: Colors.grey,
                  //             ),
                  //           ],
                  //           borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(30),
                  //               topRight: Radius.circular(30),
                  //               bottomLeft: Radius.circular(30),
                  //               bottomRight: Radius.circular(30)),
                  //           image: DecorationImage(
                  //             alignment: Alignment.center,
                  //             fit: BoxFit.contain,
                  //             image: AssetImage(
                  //               "assets/images/pngfuel.com-5.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 20),
                  //         padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  //         width: 350,
                  //         height: 400,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(30),
                  //           color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 4),
                  //               blurRadius: 10,
                  //               color: Colors.grey[500],
                  //             ),
                  //           ],
                  //         ),
                  //         child: SingleChildScrollView(
                  //           child: Column(children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 SizedBox(
                  //                   width: 30,
                  //                 ),
                  //                 Align(
                  //                     alignment: Alignment.topCenter,
                  //                     child: Text(
                  //                       '$location',
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.blue,
                  //                       ),
                  //                     )),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 30,
                  //             ),
                  //             Column(
                  //               children: <Widget>[
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcase',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcaseo',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeath',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeathw',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecovered',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 60,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecoveredr',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 20,
                  //         width: 350,
                  //         // decoration: BoxDecoration(
                  //         //   // borderRadius: BorderRadius.circular(30),
                  //         //   //             image: DecorationImage(
                  //         //   // alignment: Alignment.topRight,

                  //         //   gradient: LinearGradient(
                  //         //       begin: Alignment.topLeft,
                  //         //       end: Alignment.bottomRight,
                  //         //       colors: [
                  //         //         Colors.deepOrange,
                  //         //         Colors.white,
                  //         //         Colors.green,
                  //         //       ]),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       offset: Offset(0, 2),
                  //         //       blurRadius: 9,
                  //         //       color: Colors.grey,
                  //         //     ),
                  //         //   ],
                  //         //   borderRadius: BorderRadius.only(
                  //         //       topLeft: Radius.circular(30),
                  //         //       topRight: Radius.circular(30),
                  //         //       bottomLeft: Radius.circular(30),
                  //         //       bottomRight: Radius.circular(30)),
                  //         //   image: DecorationImage(
                  //         //     alignment: Alignment.center,
                  //         //     fit: BoxFit.contain,
                  //         //     image: AssetImage(
                  //         //       "assets/images/india.png",
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 200,
                  //         width: 350,
                  //         decoration: BoxDecoration(
                  //           // borderRadius: BorderRadius.circular(30),
                  //           //             image: DecorationImage(
                  //           // alignment: Alignment.topRight,

                  //           gradient: LinearGradient(
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //               colors: [
                  //                 // Colors.deepOrange,
                  //                 Colors.yellow,
                  //                 Colors.red,
                  //               ]),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 2),
                  //               blurRadius: 9,
                  //               color: Colors.grey,
                  //             ),
                  //           ],
                  //           borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(30),
                  //               topRight: Radius.circular(30),
                  //               bottomLeft: Radius.circular(30),
                  //               bottomRight: Radius.circular(30)),
                  //           image: DecorationImage(
                  //             alignment: Alignment.center,
                  //             fit: BoxFit.contain,
                  //             image: AssetImage(
                  //               "assets/images/pngfuel.com-5.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 20),
                  //         padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  //         width: 350,
                  //         height: 400,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(30),
                  //           color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 4),
                  //               blurRadius: 10,
                  //               color: Colors.grey[500],
                  //             ),
                  //           ],
                  //         ),
                  //         child: SingleChildScrollView(
                  //           child: Column(children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 SizedBox(
                  //                   width: 30,
                  //                 ),
                  //                 Align(
                  //                     alignment: Alignment.topCenter,
                  //                     child: Text(
                  //                       '$location',
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.blue,
                  //                       ),
                  //                     )),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 30,
                  //             ),
                  //             Column(
                  //               children: <Widget>[
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcase',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcaseo',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeath',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeathw',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecovered',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 60,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecoveredr',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 20,
                  //         width: 350,
                  //         // decoration: BoxDecoration(
                  //         //   // borderRadius: BorderRadius.circular(30),
                  //         //   //             image: DecorationImage(
                  //         //   // alignment: Alignment.topRight,

                  //         //   gradient: LinearGradient(
                  //         //       begin: Alignment.topLeft,
                  //         //       end: Alignment.bottomRight,
                  //         //       colors: [
                  //         //         Colors.deepOrange,
                  //         //         Colors.white,
                  //         //         Colors.green,
                  //         //       ]),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       offset: Offset(0, 2),
                  //         //       blurRadius: 9,
                  //         //       color: Colors.grey,
                  //         //     ),
                  //         //   ],
                  //         //   borderRadius: BorderRadius.only(
                  //         //       topLeft: Radius.circular(30),
                  //         //       topRight: Radius.circular(30),
                  //         //       bottomLeft: Radius.circular(30),
                  //         //       bottomRight: Radius.circular(30)),
                  //         //   image: DecorationImage(
                  //         //     alignment: Alignment.center,
                  //         //     fit: BoxFit.contain,
                  //         //     image: AssetImage(
                  //         //       "assets/images/india.png",
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 200,
                  //         width: 350,
                  //         decoration: BoxDecoration(
                  //           // borderRadius: BorderRadius.circular(30),
                  //           //             image: DecorationImage(
                  //           // alignment: Alignment.topRight,

                  //           gradient: LinearGradient(
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //               colors: [
                  //                 // Colors.deepOrange,
                  //                 Colors.yellow,
                  //                 Colors.red,
                  //               ]),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 2),
                  //               blurRadius: 9,
                  //               color: Colors.grey,
                  //             ),
                  //           ],
                  //           borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(30),
                  //               topRight: Radius.circular(30),
                  //               bottomLeft: Radius.circular(30),
                  //               bottomRight: Radius.circular(30)),
                  //           image: DecorationImage(
                  //             alignment: Alignment.center,
                  //             fit: BoxFit.contain,
                  //             image: AssetImage(
                  //               "assets/images/pngfuel.com-5.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 20),
                  //         padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  //         width: 350,
                  //         height: 400,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(30),
                  //           color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 4),
                  //               blurRadius: 10,
                  //               color: Colors.grey[500],
                  //             ),
                  //           ],
                  //         ),
                  //         child: SingleChildScrollView(
                  //           child: Column(children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 SizedBox(
                  //                   width: 30,
                  //                 ),
                  //                 Align(
                  //                     alignment: Alignment.topCenter,
                  //                     child: Text(
                  //                       '$location',
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.blue,
                  //                       ),
                  //                     )),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 30,
                  //             ),
                  //             Column(
                  //               children: <Widget>[
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcase',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcaseo',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeath',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeathw',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecovered',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 60,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecoveredr',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 20,
                  //         width: 350,
                  //         // decoration: BoxDecoration(
                  //         //   // borderRadius: BorderRadius.circular(30),
                  //         //   //             image: DecorationImage(
                  //         //   // alignment: Alignment.topRight,

                  //         //   gradient: LinearGradient(
                  //         //       begin: Alignment.topLeft,
                  //         //       end: Alignment.bottomRight,
                  //         //       colors: [
                  //         //         Colors.deepOrange,
                  //         //         Colors.white,
                  //         //         Colors.green,
                  //         //       ]),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       offset: Offset(0, 2),
                  //         //       blurRadius: 9,
                  //         //       color: Colors.grey,
                  //         //     ),
                  //         //   ],
                  //         //   borderRadius: BorderRadius.only(
                  //         //       topLeft: Radius.circular(30),
                  //         //       topRight: Radius.circular(30),
                  //         //       bottomLeft: Radius.circular(30),
                  //         //       bottomRight: Radius.circular(30)),
                  //         //   image: DecorationImage(
                  //         //     alignment: Alignment.center,
                  //         //     fit: BoxFit.contain,
                  //         //     image: AssetImage(
                  //         //       "assets/images/india.png",
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 200,
                  //         width: 350,
                  //         decoration: BoxDecoration(
                  //           // borderRadius: BorderRadius.circular(30),
                  //           //             image: DecorationImage(
                  //           // alignment: Alignment.topRight,

                  //           gradient: LinearGradient(
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //               colors: [
                  //                 // Colors.deepOrange,
                  //                 Colors.yellow,
                  //                 Colors.red,
                  //               ]),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 2),
                  //               blurRadius: 9,
                  //               color: Colors.grey,
                  //             ),
                  //           ],
                  //           borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(30),
                  //               topRight: Radius.circular(30),
                  //               bottomLeft: Radius.circular(30),
                  //               bottomRight: Radius.circular(30)),
                  //           image: DecorationImage(
                  //             alignment: Alignment.center,
                  //             fit: BoxFit.contain,
                  //             image: AssetImage(
                  //               "assets/images/pngfuel.com-5.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 20),
                  //         padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  //         width: 350,
                  //         height: 400,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(30),
                  //           color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 4),
                  //               blurRadius: 10,
                  //               color: Colors.grey[500],
                  //             ),
                  //           ],
                  //         ),
                  //         child: SingleChildScrollView(
                  //           child: Column(children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 SizedBox(
                  //                   width: 30,
                  //                 ),
                  //                 Align(
                  //                     alignment: Alignment.topCenter,
                  //                     child: Text(
                  //                       '$location',
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.blue,
                  //                       ),
                  //                     )),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 30,
                  //             ),
                  //             Column(
                  //               children: <Widget>[
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcase',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcaseo',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeath',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeathw',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecovered',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 60,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecoveredr',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 20,
                  //         width: 350,
                  //         // decoration: BoxDecoration(
                  //         //   // borderRadius: BorderRadius.circular(30),
                  //         //   //             image: DecorationImage(
                  //         //   // alignment: Alignment.topRight,

                  //         //   gradient: LinearGradient(
                  //         //       begin: Alignment.topLeft,
                  //         //       end: Alignment.bottomRight,
                  //         //       colors: [
                  //         //         Colors.deepOrange,
                  //         //         Colors.white,
                  //         //         Colors.green,
                  //         //       ]),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       offset: Offset(0, 2),
                  //         //       blurRadius: 9,
                  //         //       color: Colors.grey,
                  //         //     ),
                  //         //   ],
                  //         //   borderRadius: BorderRadius.only(
                  //         //       topLeft: Radius.circular(30),
                  //         //       topRight: Radius.circular(30),
                  //         //       bottomLeft: Radius.circular(30),
                  //         //       bottomRight: Radius.circular(30)),
                  //         //   image: DecorationImage(
                  //         //     alignment: Alignment.center,
                  //         //     fit: BoxFit.contain,
                  //         //     image: AssetImage(
                  //         //       "assets/images/india.png",
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 200,
                  //         width: 350,
                  //         decoration: BoxDecoration(
                  //           // borderRadius: BorderRadius.circular(30),
                  //           //             image: DecorationImage(
                  //           // alignment: Alignment.topRight,

                  //           gradient: LinearGradient(
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //               colors: [
                  //                 // Colors.deepOrange,
                  //                 Colors.yellow,
                  //                 Colors.red,
                  //               ]),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 2),
                  //               blurRadius: 9,
                  //               color: Colors.grey,
                  //             ),
                  //           ],
                  //           borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(30),
                  //               topRight: Radius.circular(30),
                  //               bottomLeft: Radius.circular(30),
                  //               bottomRight: Radius.circular(30)),
                  //           image: DecorationImage(
                  //             alignment: Alignment.center,
                  //             fit: BoxFit.contain,
                  //             image: AssetImage(
                  //               "assets/images/pngfuel.com-5.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 20),
                  //         padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  //         width: 350,
                  //         height: 400,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(30),
                  //           color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 4),
                  //               blurRadius: 10,
                  //               color: Colors.grey[500],
                  //             ),
                  //           ],
                  //         ),
                  //         child: SingleChildScrollView(
                  //           child: Column(children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 SizedBox(
                  //                   width: 30,
                  //                 ),
                  //                 Align(
                  //                     alignment: Alignment.topCenter,
                  //                     child: Text(
                  //                       '$location',
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.blue,
                  //                       ),
                  //                     )),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 30,
                  //             ),
                  //             Column(
                  //               children: <Widget>[
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcase',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcaseo',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeath',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeathw',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecovered',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 60,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecoveredr',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 20,
                  //         width: 350,
                  //         // decoration: BoxDecoration(
                  //         //   // borderRadius: BorderRadius.circular(30),
                  //         //   //             image: DecorationImage(
                  //         //   // alignment: Alignment.topRight,

                  //         //   gradient: LinearGradient(
                  //         //       begin: Alignment.topLeft,
                  //         //       end: Alignment.bottomRight,
                  //         //       colors: [
                  //         //         Colors.deepOrange,
                  //         //         Colors.white,
                  //         //         Colors.green,
                  //         //       ]),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       offset: Offset(0, 2),
                  //         //       blurRadius: 9,
                  //         //       color: Colors.grey,
                  //         //     ),
                  //         //   ],
                  //         //   borderRadius: BorderRadius.only(
                  //         //       topLeft: Radius.circular(30),
                  //         //       topRight: Radius.circular(30),
                  //         //       bottomLeft: Radius.circular(30),
                  //         //       bottomRight: Radius.circular(30)),
                  //         //   image: DecorationImage(
                  //         //     alignment: Alignment.center,
                  //         //     fit: BoxFit.contain,
                  //         //     image: AssetImage(
                  //         //       "assets/images/india.png",
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: 8,
                  // ),
                  // SingleChildScrollView(
                  //   child: Column(
                  //     children: <Widget>[
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 200,
                  //         width: 350,
                  //         decoration: BoxDecoration(
                  //           // borderRadius: BorderRadius.circular(30),
                  //           //             image: DecorationImage(
                  //           // alignment: Alignment.topRight,

                  //           gradient: LinearGradient(
                  //               begin: Alignment.topLeft,
                  //               end: Alignment.bottomRight,
                  //               colors: [
                  //                 // Colors.deepOrange,
                  //                 Colors.yellow,
                  //                 Colors.red,
                  //               ]),
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 2),
                  //               blurRadius: 9,
                  //               color: Colors.grey,
                  //             ),
                  //           ],
                  //           borderRadius: BorderRadius.only(
                  //               topLeft: Radius.circular(30),
                  //               topRight: Radius.circular(30),
                  //               bottomLeft: Radius.circular(30),
                  //               bottomRight: Radius.circular(30)),
                  //           image: DecorationImage(
                  //             alignment: Alignment.center,
                  //             fit: BoxFit.contain,
                  //             image: AssetImage(
                  //               "assets/images/pngfuel.com-5.png",
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 10,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(top: 20),
                  //         padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  //         width: 350,
                  //         height: 400,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(30),
                  //           color: Colors.white,
                  //           boxShadow: [
                  //             BoxShadow(
                  //               offset: Offset(0, 4),
                  //               blurRadius: 10,
                  //               color: Colors.grey[500],
                  //             ),
                  //           ],
                  //         ),
                  //         child: SingleChildScrollView(
                  //           child: Column(children: <Widget>[
                  //             Row(
                  //               children: <Widget>[
                  //                 SizedBox(
                  //                   width: 30,
                  //                 ),
                  //                 Align(
                  //                     alignment: Alignment.topCenter,
                  //                     child: Text(
                  //                       '$location',
                  //                       style: GoogleFonts.poppins(
                  //                         fontSize: 25,
                  //                         fontWeight: FontWeight.bold,
                  //                         color: Colors.blue,
                  //                       ),
                  //                     )),
                  //               ],
                  //             ),
                  //             SizedBox(
                  //               height: 30,
                  //             ),
                  //             Column(
                  //               children: <Widget>[
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcase',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.purple,
                  //                       title: "Total Cases",
                  //                       number: '$totalcaseo',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeath',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 100,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.red,
                  //                       title: "Total Deaths",
                  //                       number: '$totaldeathw',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   height: 20,
                  //                 ),
                  //                 Row(
                  //                   children: <Widget>[
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecovered',
                  //                     ),
                  //                     SizedBox(
                  //                       width: 60,
                  //                     ),
                  //                     Counter(
                  //                       color: Colors.green,
                  //                       title: "Total Recovered",
                  //                       number: '$totalrecoveredr',
                  //                     ),
                  //                   ],
                  //                 ),
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         height: 20,
                  //       ),
                  //       Container(
                  //         margin: EdgeInsets.only(
                  //             left: 15, top: 0, right: 15, bottom: 0),
                  //         height: 20,
                  //         width: 350,
                  //         // decoration: BoxDecoration(
                  //         //   // borderRadius: BorderRadius.circular(30),
                  //         //   //             image: DecorationImage(
                  //         //   // alignment: Alignment.topRight,

                  //         //   gradient: LinearGradient(
                  //         //       begin: Alignment.topLeft,
                  //         //       end: Alignment.bottomRight,
                  //         //       colors: [
                  //         //         Colors.deepOrange,
                  //         //         Colors.white,
                  //         //         Colors.green,
                  //         //       ]),
                  //         //   boxShadow: [
                  //         //     BoxShadow(
                  //         //       offset: Offset(0, 2),
                  //         //       blurRadius: 9,
                  //         //       color: Colors.grey,
                  //         //     ),
                  //         //   ],
                  //         //   borderRadius: BorderRadius.only(
                  //         //       topLeft: Radius.circular(30),
                  //         //       topRight: Radius.circular(30),
                  //         //       bottomLeft: Radius.circular(30),
                  //         //       bottomRight: Radius.circular(30)),
                  //         //   image: DecorationImage(
                  //         //     alignment: Alignment.center,
                  //         //     fit: BoxFit.contain,
                  //         //     image: AssetImage(
                  //         //       "assets/images/india.png",
                  //         //     ),
                  //         //   ),
                  //         // ),
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  // ------------------------
                ],
              ),
            )
          ])),
    );
  }
}
