import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';

class WaitingScreen extends StatefulWidget {
  @override
  _WaitingScreenState createState() => _WaitingScreenState();
}

class _WaitingScreenState extends State<WaitingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
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
      ),
    );
  }
}

