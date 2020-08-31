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
        shadowColor: LightTheme.SECOND_THEME.withOpacity(0.5),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [LightTheme.SECOND_THEME.withOpacity(0.9), LightTheme.SECOND_THEME.withOpacity(1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(12),
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
                      gradient: LinearGradient(
                          colors: [LightTheme.BALL_1_COLOR.withOpacity(0.7),LightTheme.BALL_1_COLOR ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft
                      )
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
                      gradient: LinearGradient(
                          colors: [LightTheme.BALL_2_COLOR.withOpacity(0.7),LightTheme.BALL_2_COLOR ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft
                      )
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
                      gradient: LinearGradient(
                          colors: [LightTheme.BALL_3_COLOR.withOpacity(0.7),LightTheme.BALL_3_COLOR ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft
                      )
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
                      gradient: LinearGradient(
                          colors: [LightTheme.BALL_4_COLOR.withOpacity(0.7),LightTheme.BALL_4_COLOR ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft
                      )
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
                      gradient: LinearGradient(
                          colors: [LightTheme.BALL_5_COLOR.withOpacity(0.7),LightTheme.BALL_5_COLOR ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft
                      )
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
                      gradient: LinearGradient(
                          colors: [LightTheme.BALL_6_COLOR.withOpacity(0.7),LightTheme.BALL_6_COLOR ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft
                      )
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
    return InkWell(
      onTap: (){
        print("click");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 2
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            maxWidth: double.infinity,
            maxHeight: SizeConfig.HOME_SCREEN_MAIN_SUBCARDWIDTH,
            minHeight: SizeConfig.HOME_SCREEN_MAIN_SUBCARDWIDTH,
          ),
          child: Card(
            shadowColor: LightTheme.SECOND_THEME,
            shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(15)
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(13),
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(13),
                bottomRight: Radius.circular(0),
              )
            ),
            elevation: 6,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [LightTheme.SECOND_THEME, LightTheme.SECOND_THEME.withOpacity(0.5)],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft
                  )
              ),
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
                              gradient: LinearGradient(
                                colors: [LightTheme.BALL_1_COLOR.withOpacity(0.5),LightTheme.BALL_1_COLOR ],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft
                              )
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
                                gradient: LinearGradient(
                                    colors: [LightTheme.BALL_2_COLOR.withOpacity(0.5),LightTheme.BALL_2_COLOR ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft
                                )
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
                                gradient: LinearGradient(
                                    colors: [LightTheme.BALL_3_COLOR.withOpacity(0.5),LightTheme.BALL_3_COLOR ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft
                                )
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
                                gradient: LinearGradient(
                                    colors: [LightTheme.BALL_4_COLOR.withOpacity(0.5),LightTheme.BALL_4_COLOR ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft
                                )
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
                                gradient: LinearGradient(
                                    colors: [LightTheme.BALL_5_COLOR.withOpacity(0.5),LightTheme.BALL_5_COLOR ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft
                                )
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
                                gradient: LinearGradient(
                                    colors: [LightTheme.BALL_6_COLOR.withOpacity(0.5),LightTheme.BALL_6_COLOR ],
                                    begin: Alignment.bottomRight,
                                    end: Alignment.topLeft
                                )
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
          ),
        ),
      ),
    );
  }
}