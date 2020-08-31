import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';

class BestOf100_TwoBall extends StatefulWidget {
  @override
  _BestOf100_TwoBallState createState() => _BestOf100_TwoBallState();
}

class _BestOf100_TwoBallState extends State<BestOf100_TwoBall> {
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = new SizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(
            color: LightTheme.FONT_COLOR,
            fontFamily: 'Poetsen_one',
            fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET,
            //fontStyle: FontStyle.italic
          ),
        ),
        backgroundColor: LightTheme.SECOND_THEME,
        leading: Icon(Icons.arrow_back_ios , color: LightTheme.FONT_COLOR,),
        elevation: 0,
    ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
        maxWidth: SizeConfig.WIDHT,
        minWidth: SizeConfig.WIDHT,
        maxHeight: SizeConfig.HEIGHT,
        minHeight: SizeConfig.HEIGHT
        ),
        child: Container(
          height: SizeConfig.HEIGHT,
          width: SizeConfig.WIDHT ,
          decoration: BoxDecoration(
              color: LightTheme.PRIMARY_THEME,
              gradient: LinearGradient(
                colors: [LightTheme.SECOND_THEME.withOpacity(1),LightTheme.SECOND_THEME.withOpacity(0.4) ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Most appearances - 2 balls",
                  style: TextStyle(
                    color: LightTheme.FONT_COLOR,
                    fontFamily: 'Poetsen_one',
                    fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 5,
                    //fontStyle: FontStyle.italic
                    fontWeight:  FontWeight.bold
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 40
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      /*Text(
                        "So lan",
                        style: TextStyle(
                            color: LightTheme.FONT_COLOR,
                            fontFamily: 'Poetsen_one',
                            fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET,
                            fontStyle: FontStyle.italic
                            //fontWeight:  FontWeight.bold
                        ),
                      ),
                      Text(
                        "Ball",
                        style: TextStyle(
                            color: LightTheme.FONT_COLOR,
                            fontFamily: 'Poetsen_one',
                            fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET,
                            fontStyle: FontStyle.italic
                            //fontWeight:  FontWeight.bold
                        ),
                      ),*/
                    ],
                  ),
                ),
                Cards(),
                Cards(),
                Cards(),
                Cards(),
                Cards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: SizeConfig.HEIGHT * 0.1,
        maxHeight: SizeConfig.HEIGHT * 0.1,
        minWidth: SizeConfig.WIDHT * 0.8,
        maxWidth: SizeConfig.WIDHT * 0.8,
      ),
      child: Card(
        color: LightTheme.FONT_COLOR_WHITE,
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        child: Container(
          width: SizeConfig.WIDHT * 0.8,
          height: SizeConfig.HEIGHT * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  colors: [LightTheme.SECOND_THEME.withOpacity(0.3),LightTheme.SECOND_THEME.withOpacity(1) ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "12",
                  style: TextStyle(
                      color: LightTheme.FONT_COLOR,
                      fontFamily: 'Poetsen_one',
                      fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET,
                      fontStyle: FontStyle.italic
                    //fontWeight:  FontWeight.bold
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE + 10,
                      height: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE + 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: LightTheme.BALL_3_COLOR,
                          gradient: LinearGradient(
                              colors: [LightTheme.FONT_COLOR.withOpacity(0.5),LightTheme.FONT_COLOR ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft
                          )
                      ),
                      child: Center(
                        child: Text(
                          "25",
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE + 4,
                              fontStyle: FontStyle.italic
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE + 10,
                      height: SizeConfig.HOME_SCREEN_MAIN_SUBBALL_SIZE + 10,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: LightTheme.BALL_3_COLOR,
                          gradient: LinearGradient(
                              colors: [LightTheme.FONT_COLOR.withOpacity(0.5),LightTheme.FONT_COLOR ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft
                          )
                      ),
                      child: Center(
                        child: Text(
                          "25",
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR_WHITE,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE + 4,
                              fontStyle: FontStyle.italic
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
      ),
    );
  }
}
