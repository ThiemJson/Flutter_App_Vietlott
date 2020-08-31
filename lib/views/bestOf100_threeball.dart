import 'package:flutter/material.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/resource/data/Data.dart';

class BestOf100_ThreeBall extends StatefulWidget {
  final DATA data;
  BestOf100_ThreeBall({
    @required this.data
  });
  @override
  _BestOf100_ThreeBallState createState() => _BestOf100_ThreeBallState(data: data);
}

class _BestOf100_ThreeBallState extends State<BestOf100_ThreeBall> {
  final DATA data;
  _BestOf100_ThreeBallState({
    @required this.data
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LightTheme.SECOND_THEME,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back_ios , color: LightTheme.FONT_COLOR,)
        ),
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
                Text(
                  "Most appearances - 3 balls",
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
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: SizeConfig.WIDHT * 0.8,
                    maxWidth: SizeConfig.WIDHT * 0.8,
                    maxHeight: SizeConfig.HEIGHT * 0.1 * 5 + 5,
                    minHeight: SizeConfig.HEIGHT * 0.1 * 5 + 5,
                  ),
                  child: Container(
                    width: SizeConfig.WIDHT * 0.8,
                    height: SizeConfig.HEIGHT * 0.1 * 5 + 5,
                    child: ListView.builder(
                      itemCount: data.listOfMostAppThreeBall.length,
                      itemBuilder: (context, index)=>Cards(
                        so1: data.listOfMostAppThreeBall[index].boso1,
                        so2: data.listOfMostAppThreeBall[index].boso2,
                        so3: data.listOfMostAppThreeBall[index].boso3,
                        solan:data.listOfMostAppThreeBall[index].solan ,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Cards extends StatelessWidget {
  final String so1;
  final String so2;
  final String so3;
  final String solan;
  const Cards({
    this.solan,
    this.so1,
    this.so2,
    this.so3,
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
        elevation: 5,
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
                  solan,
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
                          so1,
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
                          so2,
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
                          so3,
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
