import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Image.asset(
//               "assets/zuri.png",
//               // height: 50.0,
//               // width: 220.0,
//             ),
//             Text("Pascal's Stage 2"),
//           ],
//         ),
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         elevation: 0.0,
//       ),
//       body: Column(
//         children: [
//           TextFormField(
//             style: TextStyle(fontSize: 18),
//             decoration: InputDecoration(
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
//               isDense: true,
//               filled: true,
//               fillColor: Colors.grey.withOpacity(0.2),
//               labelText: 'Author:',
//               labelStyle: TextStyle(
//                   fontFamily: 'Montserrat',
//                   fontSize: 18.0,
//                   // fontWeight: FontWeight.bold,
//                   color: Colors.grey),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide.none,
//               ),
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide.none,
//               ),
//             ),
//           ),
//           SizedBox(height: 15.0),
//           TextFormField(
//             style: TextStyle(fontSize: 18),
//             decoration: InputDecoration(
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
//               isDense: true,
//               filled: true,
//               fillColor: Colors.grey.withOpacity(0.2),
//               labelText: 'Title:',
//               labelStyle: TextStyle(
//                   fontFamily: 'Montserrat',
//                   // fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                   color: Colors.grey),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide.none,
//               ),
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide.none,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final myController = TextEditingController();
  final yourController = TextEditingController();

  void dispose() {
    myController.dispose();
    yourController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            "assets/zuri.png",
            fit: BoxFit.contain,
            width: 50.0,
          ),
        ),
        backgroundColor: Color(0xff0170c1),
        title: Text("Pascal's Stage 2"),
        // title:
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50.0),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Display',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: myController,
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      labelText: 'Me:',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    controller: yourController,
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                      isDense: true,
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      labelText: 'Random stuff:',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  SizedBox.fromSize(
                    size: Size(double.infinity, 50),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Color(0xff0170c1),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.resolveWith(
                          (states) {
                            return states.contains(MaterialState.pressed)
                                ? Colors.blue
                                : null;
                          },
                        ),
                      ),
                      onPressed: () => Timer(
                        const Duration(milliseconds: 400),
                        () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Row(
                                  children: [
                                    Text(myController.text),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(yourController.text),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      child: Container(
                        child: Text(
                          'PRINT',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
