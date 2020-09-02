import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_lottery_ticker.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/models/class/CardClass.dart';

class LotteryScreen extends StatefulWidget {
  final Result_lottery_ticker data;
  LotteryScreen({
   @required this.data
  });
  @override
  _LotteryScreenState createState() => _LotteryScreenState(data: data);
}

class _LotteryScreenState extends State<LotteryScreen> {
  final Result_lottery_ticker data;
  _LotteryScreenState({
    @required this.data
  });
  @override
  Widget build(BuildContext context) {
    SizeConfig sizeConfig = new SizeConfig(context);
    return Scaffold(
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
                  colors: [LightTheme.SECOND_THEME.withOpacity(1),LightTheme.SECOND_THEME.withOpacity(1) ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              )
          ),
          child: Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 18
                    ),
                    child: Card(
                      elevation: 20,
                      color: LightTheme.SECOND_THEME.withOpacity(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
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
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: SizeConfig.HEIGHT * 0.6,
                      maxHeight: SizeConfig.HEIGHT * 0.6 ,
                      minWidth:  SizeConfig.WIDHT * 0.85,
                      maxWidth: SizeConfig.WIDHT * 0.85,
                    ),
                    child: Card(
                      color: LightTheme.SECOND_THEME,
                      elevation: 30,
                      //shadowColor: Colors.white.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: SizeConfig.HEIGHT * 0.6,
                          maxHeight: SizeConfig.HEIGHT * 0.6,
                          maxWidth: SizeConfig.WIDHT * 0.85,
                          minWidth: SizeConfig.WIDHT * 0.85,
                        ),
                        child: Container(
                          height: SizeConfig.HEIGHT * 0.6 ,
                          width:  SizeConfig.WIDHT * 0.85,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [LightTheme.SECOND_THEME.withOpacity(0), LightTheme.SECOND_THEME.withOpacity(0.8)],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(19.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Date: "+data.ngay,
                                      style: TextStyle(
                                          color: LightTheme.FONT_COLOR,
                                          fontFamily: 'Poetsen_one',
                                          fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET - 2,
                                          //fontStyle: FontStyle.italic
                                      ),
                                    ),
                                    Text(
                                      "State: "+data.kiquaythuong,
                                      style: TextStyle(
                                          color: LightTheme.FONT_COLOR,
                                          fontFamily: 'Poetsen_one',
                                          fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET - 4,
                                          //fontStyle: FontStyle.italic
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: SizeConfig.WIDHT * 0.58,
                                      minWidth: SizeConfig.WIDHT * 0.58,
                                      maxHeight: SizeConfig.HEIGHT * 0.1,
                                      minHeight: SizeConfig.HEIGHT * 0.1,
                                    ),
                                    child: Card(
                                      //shadowColor: Colors.redAccent,
                                      elevation: 15,
                                      color: Colors.black87,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Container(
                                        width: SizeConfig.WIDHT * 0.58,
                                        height: SizeConfig.HEIGHT * 0.1,
                                        decoration: BoxDecoration(
                                          color: Colors.black87,
                                          borderRadius: BorderRadius.circular(12)
                                        ),
                                        child: Center(
                                          child: Text(
                                            data.tableTicket.giatri+" VND",
                                            style: TextStyle(
                                                color: Colors.yellow,
                                                fontFamily: 'Poetsen_one',
                                                fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET ,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  "WINNING NUMBERS !",
                                  style: TextStyle(
                                      color: LightTheme.FONT_COLOR,
                                      fontFamily: 'Poetsen_one',
                                      fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET ,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Lott_CardNumber(so: data.boso.substring(0,2),),
                                          Lott_CardNumber(so: data.boso.substring(2,4),),
                                          Lott_CardNumber(so: data.boso.substring(4,6),),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Lott_CardNumber(so: data.boso.substring(6,8),),
                                          Lott_CardNumber(so: data.boso.substring(8,10),),
                                          Lott_CardNumber(so: data.boso.substring(10,12),),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Lott_CardNumber extends StatelessWidget {
  final String so;
  const Lott_CardNumber({
    @required this.so,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: SizeConfig.HEIGHT * 0.1,
        maxHeight: SizeConfig.HEIGHT * 0.1,
        minWidth: SizeConfig.HEIGHT * 0.1,
        maxWidth: SizeConfig.HEIGHT * 0.1,
      ),
      child: Card(
        elevation: 20,
        color: LightTheme.SECOND_THEME,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        child: Container(
          width: SizeConfig.HEIGHT * 0.1,
          height: SizeConfig.HEIGHT * 0.1,
          decoration: BoxDecoration(
            color: LightTheme.SECOND_THEME,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(
            child: Text(
              so,
              style: TextStyle(
                  color: LightTheme.PRIMARY_THEME,
                  fontFamily: 'Poetsen_one',
                  fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET+10,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
