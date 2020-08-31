import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/resource/data/Data.dart';
import 'package:flutter_vietlott/views/bestOf100_oneball.dart';
import 'package:flutter_vietlott/views/bestOf100_threeball.dart';
import 'package:flutter_vietlott/views/bestOf100_twoball.dart';
import 'package:flutter_vietlott/views/home_screen.dart';
import 'package:flutter_vietlott/views/lottery_ticket_screen.dart';
import 'package:flutter_vietlott/views/menu_screen.dart';
import 'package:flutter_vietlott/views/pageview_lottery_screen.dart';
import 'package:flutter_vietlott/views/waiting_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App_Vietlott',
      /*initialRoute: "/",
      routes: {
        "/": (context) => null,
        "/home_screen": (context) => null,
        "/home_second_screen": (context) => null
      },*/
      home: WaitingScreen(),
    );
  }
}

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print("bat dau");
    DATA _data = DATA();
    _data.getData().then((value) => {
    Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
        )
      )
    });
    print("Ket thuc");
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App_Vietlott',
      *//*initialRoute: "/",
      routes: {
        "/": (context) => null,
        "/home_screen": (context) => null,
        "/home_second_screen": (context) => null
      },*//*
      home: WaitingScreen(),
    );
  }
}*/

