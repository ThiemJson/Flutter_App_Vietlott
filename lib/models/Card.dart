import 'package:flutter/material.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';

class CardWidget extends StatelessWidget {
  final int first_number;
  final int second_number;
  final int third_number;
  final int four_number;
  final int five_number;
  final int six_number;

  final int state;
  final String date;
  const CardWidget({
    Key key,
    this.first_number,
    this.second_number,
    this.third_number,
    this.four_number,
    this.five_number,
    this.six_number,
    this.state,
    this.date
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
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        elevation: 15,
        color: LightTheme.FONT_COLOR_WHITE.withOpacity(0.6),
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
                    this.first_number.toString(),
                    style: TextStyle(
                        color: LightTheme.FONT_COLOR_WHITE,
                        fontFamily: 'Poetsen_one',
                        fontSize: SizeConfig.HOME_SCREEN_MAIN_NUMBER_BALL_SIZE,
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
                    this.second_number.toString(),
                    style: TextStyle(
                        color: LightTheme.FONT_COLOR_WHITE,
                        fontFamily: 'Poetsen_one',
                        fontSize: SizeConfig.HOME_SCREEN_MAIN_NUMBER_BALL_SIZE,
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
                    this.third_number.toString(),
                    style: TextStyle(
                        color: LightTheme.FONT_COLOR_WHITE,
                        fontFamily: 'Poetsen_one',
                        fontSize: SizeConfig.HOME_SCREEN_MAIN_NUMBER_BALL_SIZE,
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
                    this.four_number.toString(),
                    style: TextStyle(
                        color: LightTheme.FONT_COLOR_WHITE,
                        fontFamily: 'Poetsen_one',
                        fontSize: SizeConfig.HOME_SCREEN_MAIN_NUMBER_BALL_SIZE,
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
                    this.five_number.toString(),
                    style: TextStyle(
                        color: LightTheme.FONT_COLOR_WHITE,
                        fontFamily: 'Poetsen_one',
                        fontSize: SizeConfig.HOME_SCREEN_MAIN_NUMBER_BALL_SIZE,
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
                    this.six_number.toString(),
                    style: TextStyle(
                        color: LightTheme.FONT_COLOR_WHITE,
                        fontFamily: 'Poetsen_one',
                        fontSize: SizeConfig.HOME_SCREEN_MAIN_NUMBER_BALL_SIZE,
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


class CardWidget_Sub extends StatelessWidget {
  final int first_number;
  final int second_number;
  final int third_number;
  final int four_number;
  final int five_number;
  final int six_number;

  final int state;
  final String date;
  const CardWidget_Sub({
    Key key,
    this.first_number,
    this.second_number,
    this.third_number,
    this.four_number,
    this.five_number,
    this.six_number,
    this.state,
    this.date
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        maxWidth: double.infinity,
        maxHeight: SizeConfig.HOME_SCREEN_MAIN_SUBCARDWIDTH,
        minHeight: SizeConfig.HOME_SCREEN_MAIN_SUBCARDWIDTH,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
            //borderRadius: BorderRadius.circular(15)
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(0),
          )
        ),
        elevation: 3,
        color: LightTheme.FONT_COLOR_WHITE.withOpacity(0.6),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5
                    ),
                    child: Text(
                      "Date: "+this.date,
                      style: TextStyle(
                          color: LightTheme.FONT_COLOR,
                          fontFamily: 'Poetsen_one',
                          fontSize: SizeConfig.HOME_SCREEN_CARDTITLESIZE,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5
                    ),
                    child: Text(
                      "State: "+ this.state.toString(),
                      style: TextStyle(
                          color: LightTheme.FONT_COLOR,
                          fontFamily: 'Poetsen_one',
                          fontSize: SizeConfig.HOME_SCREEN_CARDTITLESIZE,
                          fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      height: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: LightTheme.BALL_1_COLOR,
                      ),
                      child: Center(
                        child: Text(
                          this.first_number.toString(),
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      height: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: LightTheme.BALL_2_COLOR,
                      ),
                      child: Center(
                        child: Text(
                          this.second_number.toString(),
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      height: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: LightTheme.BALL_3_COLOR,
                      ),
                      child: Center(
                        child: Text(
                          this.third_number.toString(),
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      height: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: LightTheme.BALL_4_COLOR,
                      ),
                      child: Center(
                        child: Text(
                          this.four_number.toString(),
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      height: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: LightTheme.BALL_5_COLOR,
                      ),
                      child: Center(
                        child: Text(
                          this.five_number.toString(),
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      height: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: LightTheme.BALL_6_COLOR,
                      ),
                      child: Center(
                        child: Text(
                          this.six_number.toString(),
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}