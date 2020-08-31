import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/resource/data/Data.dart';

import 'home_screen.dart';

class WaitingScreen extends StatefulWidget {
  @override
  _WaitingScreenState createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("bat dau");
    DATA _data = DATA();
    _data.getData().then((value) => {
      print(_data.listOfLastestLottery[0].boso),
      Future.delayed(const Duration(seconds: 4),()=>{
        Navigator.push(context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(data: _data,),
            )
        )
      })
    });
    print("Ket thuc");
  }
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[ LightTheme.SECOND_THEME.withOpacity(0.75),LightTheme.FONT_COLOR_WHITE ],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    SizeConfig SIZE = SizeConfig(context);
    LightTheme THEME = LightTheme();
    return Scaffold(
      body: Container(
        height: SizeConfig.HEIGHT,
        width:  SizeConfig.WIDHT,
        decoration: BoxDecoration(
          color: LightTheme.PRIMARY_THEME,
          gradient: LinearGradient(
            colors: [LightTheme.PRIMARY_THEME.withOpacity(0.45),LightTheme.PRIMARY_THEME.withOpacity(1) ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: SizeConfig.WAITING_SCREEN_LOGOSIZE,
                height: SizeConfig.WAITING_SCREEN_LOGOSIZE,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('lib/resource/images/logoVietlott.png'),
                        fit: BoxFit.fill
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Vietlott",
                  style: TextStyle(
                    foreground: Paint()..shader = linearGradient,
                      //color: LightTheme.FONT_COLOR_WHITE,
                      fontFamily: 'Poetsen_one',
                      fontSize: SizeConfig.WAITING_SCREEN_MAINTITLE
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Loading data...",
                  style: TextStyle(
                      foreground: Paint()..shader = linearGradient,
                      //color: LightTheme.FONT_COLOR_WHITE,
                      fontFamily: 'Poetsen_one',
                      fontSize: SizeConfig.WAITING_SCREEN_SUBTITLE,
                      fontStyle: FontStyle.italic
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


  /*@override
  Widget build(BuildContext context) {
    SizeConfig SIZE = SizeConfig(context);
    LightTheme THEME = LightTheme();
    return Scaffold(
      body: Container(
        height: SizeConfig.HEIGHT,
        width:  SizeConfig.WIDHT,
        decoration: BoxDecoration(
          color: LightTheme.PRIMARY_THEME,
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: SizeConfig.WAITING_SCREEN_LOGOSIZE,
                    height: SizeConfig.WAITING_SCREEN_LOGOSIZE,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('lib/resource/images/logoVietlott.png'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Vietlott",
                      style: TextStyle(
                          color: LightTheme.FONT_COLOR_WHITE,
                          fontFamily: 'Poetsen_one',
                          fontSize: SizeConfig.WAITING_SCREEN_MAINTITLE
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Loading data...",
                      style: TextStyle(
                          color: LightTheme.FONT_COLOR_WHITE,
                          fontFamily: 'Poetsen_one',
                          fontSize: SizeConfig.WAITING_SCREEN_SUBTITLE,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Positioned(
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }*/
}

