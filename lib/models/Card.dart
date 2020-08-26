import 'package:flutter/material.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
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
    );
  }
}