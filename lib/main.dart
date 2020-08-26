import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/views/home_screen.dart';
import 'package:flutter_vietlott/views/waiting_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App_Vietlott',
/*      initialRoute: "/",
      routes: {
        "/": (context) => null,
        "/home_screen": (context) => null,
        "/home_second_screen": (context) => null
      },*/
      home: HomeScreen(),
    );
  }
}
