import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/models/Card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig SIZE = SizeConfig(context);
    LightTheme THEME = LightTheme();
    return Scaffold(
       backgroundColor: LightTheme.SECOND_THEME,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: SizeConfig.HOME_SCREEN_MAINT_BLOCK,
              maxHeight: SizeConfig.HOME_SCREEN_MAINT_BLOCK,
              maxWidth: SizeConfig.WIDHT,
              minWidth: SizeConfig.WIDHT,
            ),
            child: Container(
              width: SizeConfig.WIDHT,
              height: SizeConfig.HOME_SCREEN_MAINT_BLOCK,
              decoration: BoxDecoration(
                color: LightTheme.PRIMARY_THEME,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(45),
                  bottomLeft: Radius.circular(45)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 30
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Vietlott",
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAINTITLE
                          ),
                        ),
                        Container(
                          width: SizeConfig.HOME_SCREEN_LOGOSIZE,
                          height: SizeConfig.HOME_SCREEN_LOGOSIZE,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('lib/resource/images/logoVietlott.png'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Recent Winner",
                          style: TextStyle(
                            color: LightTheme.FONT_COLOR_WHITE,
                            fontFamily: 'Poetsen_one',
                            fontSize: SizeConfig.HOME_SCREEN_SUBTITLE,
                            fontStyle: FontStyle.italic
                          ),
                        ),
                        Text(
                          "Update: 20-12-2020",
                          style: TextStyle(
                            color: LightTheme.FONT_COLOR_WHITE,
                            fontFamily: 'Poetsen_one',
                            fontSize: SizeConfig.HOME_SCREEN_SUBTITLE - 5,
                            fontStyle: FontStyle.italic
                          ),
                        ),
                      ],
                    ),
                    CardWidget()
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              constraints: BoxConstraints(
                minHeight: SizeConfig.HEIGHT - SizeConfig.HOME_SCREEN_MAINT_BLOCK,
                maxHeight: SizeConfig.HEIGHT - SizeConfig.HOME_SCREEN_MAINT_BLOCK,
                minWidth: double.infinity,
                maxWidth: double.infinity,
              ),
              color: LightTheme.SECOND_THEME,
              child: Column(
                children: <Widget>[
                  Text(
                    "Other Lottery Ticket",
                    style: TextStyle(
                        color: LightTheme.FONT_COLOR,
                        fontFamily: 'Poetsen_one',
                        fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET,
                        fontStyle: FontStyle.italic
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      )
    );
  }
}


