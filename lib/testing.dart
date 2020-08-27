// import 'dart:io';
// import 'dart:async';

// import 'package:path_provider/path_provider.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';

// class dataform extends StatefulWidget {
//   final Storage storage;

//   const dataform({Key key, this.storage}) : super(key: key);

//   @override
//   _dataformState createState() => _dataformState();
// }

// class _dataformState extends State<dataform> {
//   String state;
//   String value;
//   String normal;
//   String username;
//   String firstname;
//   Future<Directory> _appDocDir;
//   bool _autoValidate = false;
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   @override
//   void initState() {
//     super.initState();
//     widget.storage.readData().then((String value) {
//       setState(() {
//         state = value;
//       });
//     });
//   }

//   Widget _buildfirstnamefeild() {
//     return Material(
//         child: TextFormField(
//       decoration: InputDecoration(
//         icon: Icon(
//           Icons.person,
//           color: Colors.blue,
//         ),
//         hintText: "\t\t\tFirst Name ",
//         border: InputBorder.none,
//       ),
//       validator: validateName,
//       onSaved: (String value) {
//         firstname = value;
//       },
//     ));
//   }

//   Future<File> writeData() async {
//     setState(() {
//       state = firstname;

//       firstname = '';
//     });

//     return widget.storage.writeData(state);
//   }

//   void getAppDirectory() {
//     setState(() {
//       _appDocDir = getApplicationDocumentsDirectory();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//           child: Column(
//         children: <Widget>[
//           Form(
//             key: _formKey,
//             autovalidate: _autoValidate,
//             child: _buildfirstnamefeild(),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           RaisedButton(onPressed: () {
//             _validateInputs();
//             print(firstname);
//           }),
//           SizedBox(
//             height: 10,
//           ),
//           RaisedButton(
//             onPressed: writeData,
//             child: Text('Write to File'),
//           ),
//           Text('${state ?? "File is Empty"}'),
//           FutureBuilder<Directory>(
//             future: _appDocDir,
//             builder: (BuildContext context, AsyncSnapshot<Directory> snapshot) {
//               Text text = Text('');
//               if (snapshot.connectionState == ConnectionState.done) {
//                 if (snapshot.hasError) {
//                   text = Text('Error: ${snapshot.error}');
//                 } else if (snapshot.hasData) {
//                   text = Text('Path: ${snapshot.data.path}');
//                 } else {
//                   text = Text('Unavailable');
//                 }
//               }
//               return new Container(
//                 child: text,
//               );
//             },
//           )
//         ],
//       )),
//     );
//   }

//   void _validateInputs() {
//     if (_formKey.currentState.validate()) {
// //    If all data are correct then save data to out variables
//       _formKey.currentState.save();
//     } else {
// //    If all data are not valid then start auto validation.
//       setState(() {
//         _autoValidate = true;
//       });
//     }
//   }
// }

// // class Storage {
// //   Future<String> get localPath async {
// //     final dir = await getApplicationDocumentsDirectory();
// //     return dir.path;
// //   }

// //   Future<File> get localFile async {
// //     final path = await localPath;
// //     return File('$path/db.txt');
// //   }

// //   Future<String> readData() async {
// //     try {
// //       final file = await localFile;
// //       String body = await file.readAsString();

// //       return body;
// //     } catch (e) {
// //       return e.toString();
// //     }
// //   }

// //   Future<File> writeData(String data) async {
// //     final file = await localFile;
// //     return file.writeAsString("$data");
// //   }
// // }

// // String validateName(String value) {
// //   if (value.length < 3)
// //     return 'Name must be more than 2 charater';
// //   else
// //     return null;
// // }
