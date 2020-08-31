import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/models/AnimatiionFloatingActionbutton.dart';
import 'package:flutter_vietlott/models/Card.dart';
import 'package:flutter_vietlott/resource/data/Data.dart';
import 'package:flutter_vietlott/resource/data/FakeData.dart';
import 'package:flutter_vietlott/views/bestOf100_threeball.dart';
import 'package:flutter_vietlott/views/menu_screen.dart';

class HomeScreen extends StatefulWidget {
  final DATA data ;
  HomeScreen({
    @required this.data
  });
  @override
  _HomeScreenState createState() => _HomeScreenState(data: data);
}

class _HomeScreenState extends State<HomeScreen> {
  final DATA data ;
  _HomeScreenState({ @required this.data });
  FakeData fakeData = new FakeData();
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[ LightTheme.PRIMARY_THEME.withOpacity(0.75),LightTheme.PRIMARY_THEME ],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    SizeConfig SIZE = SizeConfig(context);
    LightTheme THEME = LightTheme();
    ScrollController _scrollController = new ScrollController();
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: LightTheme.SECOND_THEME.withOpacity(1),
        onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(
                builder: (context) => MenuScreen(data: data,),
              )
          );
        },
        elevation: 12,
        icon: Icon(Icons.art_track, color: LightTheme.FONT_COLOR, size:  SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 10, ),
        label: Text(
          "Menu",
          style: TextStyle(
              //color: LightTheme.FONT_COLOR_WHITE,
            color: LightTheme.FONT_COLOR,
              fontFamily: 'Poetsen_one',
              fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET - 2,
              //fontStyle: FontStyle.italic
          ),
        ),
      ),
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
                gradient: LinearGradient(
                  colors: [LightTheme.PRIMARY_THEME.withOpacity(0.7), LightTheme.PRIMARY_THEME.withOpacity(0.9)],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(0)
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
                          "Update: "+data.listOfLastestLottery[0].ngay,
                          style: TextStyle(
                            color: LightTheme.FONT_COLOR_WHITE,
                            fontFamily: 'Poetsen_one',
                            fontSize: SizeConfig.HOME_SCREEN_SUBTITLE - 3,
                            fontStyle: FontStyle.italic
                          ),
                        ),
                      ],
                    ),
                    CardWidget(
                      first_number: data.listOfLastestLottery[0].boso.substring(0,2),
                      second_number: data.listOfLastestLottery[0].boso.substring(2,4),
                      third_number: data.listOfLastestLottery[0].boso.substring(4,6),
                      four_number: data.listOfLastestLottery[0].boso.substring(6,8),
                      five_number: data.listOfLastestLottery[0].boso.substring(8,10),
                      six_number: data.listOfLastestLottery[0].boso.substring(10,12),
                      date: data.listOfLastestLottery[0].ngay,
                      state:data.listOfLastestLottery[0].kiquaythuong,
                    )
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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [LightTheme.SECOND_THEME,LightTheme.SECOND_THEME.withOpacity(0.5) ],
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft,
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                    minWidth: double.infinity,
                    maxHeight: SizeConfig.HEIGHT * 0.2855407,
                    minHeight: SizeConfig.HEIGHT * 0.2855407,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "10 Lastest Lottery",
                              style: TextStyle(
                                  color: LightTheme.FONT_COLOR,
                                  fontFamily: 'Poetsen_one',
                                  fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET - 1,
                                  fontStyle: FontStyle.italic
                              ),
                            ),
                            Text(
                              "Scroll",
                              style: TextStyle(
                                  color: LightTheme.FONT_COLOR,
                                  fontFamily: 'Poetsen_one',
                                  fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET - 7,
                                  fontStyle: FontStyle.italic
                              ),
                            ),
                          ],
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: SizeConfig.HOME_SCREEN_LISTVIEW_BLOCK,
                          maxHeight: SizeConfig.HOME_SCREEN_LISTVIEW_BLOCK,
                          minWidth: double.infinity,
                          maxWidth: double.infinity,
                        ),
                        child: ListView.builder(
                          controller: _scrollController,
                          //physics: ScrollPhysics(parent: FixedExtentScrollPhysics()),
                          itemCount: data.listOfLastestLottery.length,
                          itemBuilder: (context, index)=> CardWidget_Sub(
                            first_number: data.listOfLastestLottery[index].boso.substring(0,2),
                            second_number: data.listOfLastestLottery[index].boso.substring(2,4),
                            third_number: data.listOfLastestLottery[index].boso.substring(4,6),
                            four_number: data.listOfLastestLottery[index].boso.substring(6,8),
                            five_number: data.listOfLastestLottery[index].boso.substring(8,10),
                            six_number: data.listOfLastestLottery[index].boso.substring(10,12),
                            date: data.listOfLastestLottery[index].ngay,
                            state:data.listOfLastestLottery[index].kiquaythuong,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}


