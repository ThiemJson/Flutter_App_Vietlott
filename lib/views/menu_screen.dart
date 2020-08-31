import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig _sizeConfig = new SizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LightTheme.SECOND_THEME,
        leading: Icon(Icons.arrow_back_ios , color: LightTheme.FONT_COLOR,),
        elevation: 0,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: SizeConfig.WIDHT,
          minWidth: SizeConfig.WIDHT,
          maxHeight: SizeConfig.HEIGHT,
          minHeight: SizeConfig.HEIGHT,
        ),
        child: Container(
          height: SizeConfig.HEIGHT,
          width: SizeConfig.WIDHT ,
          decoration: BoxDecoration(
              color: LightTheme.PRIMARY_THEME,
              gradient: LinearGradient(
                  colors: [LightTheme.SECOND_THEME.withOpacity(1),LightTheme.SECOND_THEME.withOpacity(0.5) ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "MENU ",
                  style: TextStyle(
                    color: LightTheme.FONT_COLOR,
                    fontFamily: 'Poetsen_one',
                    fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 35,
                    //fontStyle: FontStyle.italic
                  ),
                ),
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  elevation: 12,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                      gradient: LinearGradient(
                        colors: [LightTheme.SECOND_THEME, LightTheme.SECOND_THEME.withOpacity(0.5)],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft
                      )
                    ),
                    width: SizeConfig.WIDHT * 0.85,
                    //height: SizeConfig.HEIGHT * 0.15,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.home, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 10 ,),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            color: LightTheme.FONT_COLOR,
                            fontFamily: 'Poetsen_one',
                            fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET ,
                            //fontStyle: FontStyle.italic
                        ),
                      ),
                      trailing: Icon(Icons.chevron_right, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 7 ,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20
                ),
                child: Text(
                  "Best 10 of 100 ",
                  style: TextStyle(
                    color: LightTheme.FONT_COLOR,
                    fontFamily: 'Poetsen_one',
                    fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET -5,
                    //fontStyle: FontStyle.italic
                  ),
                ),
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  elevation: 12,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        gradient: LinearGradient(
                            colors: [LightTheme.SECOND_THEME, LightTheme.SECOND_THEME.withOpacity(0.5)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft
                        )
                    ),
                    width: SizeConfig.WIDHT * 0.85,
                    //height: SizeConfig.HEIGHT * 0.15,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.inbox, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 10 ,),
                      title: Text(
                        "10 Lastest Lottery",
                        style: TextStyle(
                          color: LightTheme.FONT_COLOR,
                          fontFamily: 'Poetsen_one',
                          fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET - 5 ,
                          //fontStyle: FontStyle.italic
                        ),
                      ),
                      trailing: Icon(Icons.chevron_right, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 7 ,),
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  elevation: 12,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        gradient: LinearGradient(
                            colors: [LightTheme.SECOND_THEME, LightTheme.SECOND_THEME.withOpacity(0.5)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft
                        )
                    ),
                    width: SizeConfig.WIDHT * 0.85,
                    //height: SizeConfig.HEIGHT * 0.15,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.filter_1, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 10 ,),
                      title: Text(
                        "Most appearances ( 1 ball )",
                        style: TextStyle(
                          color: LightTheme.FONT_COLOR,
                          fontFamily: 'Poetsen_one',
                          fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET - 5,
                          //fontStyle: FontStyle.italic
                        ),
                      ),
                      trailing: Icon(Icons.chevron_right, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 7 ,),
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  elevation: 12,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        gradient: LinearGradient(
                            colors: [LightTheme.SECOND_THEME, LightTheme.SECOND_THEME.withOpacity(0.5)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft
                        )
                    ),
                    width: SizeConfig.WIDHT * 0.85,
                    //height: SizeConfig.HEIGHT * 0.15,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.filter_2, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 10 ,),
                      title: Text(
                        "Most appearances ( 2 balls)",
                        style: TextStyle(
                          color: LightTheme.FONT_COLOR,
                          fontFamily: 'Poetsen_one',
                          fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET -5,
                          //fontStyle: FontStyle.italic
                        ),
                      ),
                      trailing: Icon(Icons.chevron_right, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 7 ,),
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  elevation: 12,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        gradient: LinearGradient(
                            colors: [LightTheme.SECOND_THEME, LightTheme.SECOND_THEME.withOpacity(0.5)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft
                        )
                    ),
                    width: SizeConfig.WIDHT * 0.85,
                    //height: SizeConfig.HEIGHT * 0.15,
                    child: ListTile(
                      onTap: (){},
                      leading: Icon(Icons.filter_3, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 10 ,),
                      title: Text(
                        "Most appearances ( 3 balls)",
                        style: TextStyle(
                          color: LightTheme.FONT_COLOR,
                          fontFamily: 'Poetsen_one',
                          fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET -5 ,
                          //fontStyle: FontStyle.italic
                        ),
                      ),
                      trailing: Icon(Icons.chevron_right, color: LightTheme.FONT_COLOR,size:SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 7 ,),
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
