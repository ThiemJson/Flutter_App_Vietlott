import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_vietlott/controllers/size_config.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/models/Card.dart';
import 'package:flutter_vietlott/resource/data/FakeData.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FakeData fakeData = new FakeData();
  @override
  Widget build(BuildContext context) {
    SizeConfig SIZE = SizeConfig(context);
    LightTheme THEME = LightTheme();
    ScrollController _scrollController = new ScrollController();
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: LightTheme.PRIMARY_THEME,
        elevation: 12,
        icon: Icon(Icons.attach_money, color: LightTheme.FONT_COLOR_WHITE, size:  SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET + 6, ),
        label: Text(
          "Lottery Prediction",
          style: TextStyle(
              color: LightTheme.FONT_COLOR_WHITE,
              fontFamily: 'Poetsen_one',
              fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET - 5,
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
                          "Update: "+fakeData.listFakeData[0].date,
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
                      first_number: fakeData.listFakeData[0].first_number,
                      second_number: fakeData.listFakeData[0].second_number,
                      third_number: fakeData.listFakeData[0].third_number,
                      four_number: fakeData.listFakeData[0].four_number,
                      five_number: fakeData.listFakeData[0].five_number,
                      six_number: fakeData.listFakeData[0].six_number,
                      date: fakeData.listFakeData[0].date,
                      state: fakeData.listFakeData[0].state,
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
              color: LightTheme.SECOND_THEME,
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
                        child: Text(
                          "Other Lottery Ticket",
                          style: TextStyle(
                              color: LightTheme.FONT_COLOR,
                              fontFamily: 'Poetsen_one',
                              fontSize: SizeConfig.HOME_SCREEN_OTHERLOTTERYTICKET,
                              fontStyle: FontStyle.italic
                          ),
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
                          itemCount: fakeData.listFakeData.length,
                          itemBuilder: (context, index)=> CardWidget_Sub(
                            first_number: fakeData.listFakeData[index].first_number,
                            second_number: fakeData.listFakeData[index].second_number,
                            third_number: fakeData.listFakeData[index].third_number,
                            four_number: fakeData.listFakeData[index].four_number,
                            five_number: fakeData.listFakeData[index].five_number,
                            six_number: fakeData.listFakeData[index].six_number,
                            date: fakeData.listFakeData[index].date,
                            state: fakeData.listFakeData[index].state,
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


