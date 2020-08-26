import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';

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
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: double.infinity,
                        maxWidth: double.infinity,
                        maxHeight: SizeConfig.HOME_SCREEN_MAIN_CARDWIDTH,
                        minHeight: SizeConfig.HOME_SCREEN_MAIN_CARDWIDTH,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: LightTheme.FONT_COLOR_WHITE,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                height: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: LightTheme.BALL_1_COLOR,
                                ),
                                child: Center(
                                  child: Text(
                                    "99",
                                    style: TextStyle(
                                        color: LightTheme.FONT_COLOR_WHITE,
                                        fontFamily: 'Poetsen_one',
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                height: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: LightTheme.BALL_2_COLOR,
                                ),
                                child: Center(
                                  child: Text(
                                    "99",
                                    style: TextStyle(
                                        color: LightTheme.FONT_COLOR_WHITE,
                                        fontFamily: 'Poetsen_one',
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                height: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: LightTheme.BALL_3_COLOR,
                                ),
                                child: Center(
                                  child: Text(
                                    "99",
                                    style: TextStyle(
                                        color: LightTheme.FONT_COLOR_WHITE,
                                        fontFamily: 'Poetsen_one',
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                height: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: LightTheme.BALL_4_COLOR,
                                ),
                                child: Center(
                                  child: Text(
                                    "99",
                                    style: TextStyle(
                                        color: LightTheme.FONT_COLOR_WHITE,
                                        fontFamily: 'Poetsen_one',
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                height: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: LightTheme.BALL_5_COLOR,
                                ),
                                child: Center(
                                  child: Text(
                                    "99",
                                    style: TextStyle(
                                        color: LightTheme.FONT_COLOR_WHITE,
                                        fontFamily: 'Poetsen_one',
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                height: SizeConfig.HOME_SCREEN_MAIN_BALL_SIZE,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: LightTheme.BALL_6_COLOR,
                                ),
                                child: Center(
                                  child: Text(
                                    "99",
                                    style: TextStyle(
                                        color: LightTheme.FONT_COLOR_WHITE,
                                        fontFamily: 'Poetsen_one',
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: LightTheme.SECOND_THEME,
              child: Text(
                "99",
                style: TextStyle(
                    color: LightTheme.FONT_COLOR_WHITE,
                    fontFamily: 'Poetsen_one',
                    fontSize: 12,
                    fontStyle: FontStyle.italic
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
