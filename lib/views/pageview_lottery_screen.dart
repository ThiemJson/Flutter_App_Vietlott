import 'package:flutter/material.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/views/lottery_ticket_screen.dart';
class PageViewLottery extends StatefulWidget {
  @override
  _PageViewLotteryState createState() => _PageViewLotteryState();
}

class _PageViewLotteryState extends State<PageViewLottery> {
  @override
  Widget build(BuildContext context) {
    PageController _pageController = new PageController(
      initialPage: 5
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LightTheme.SECOND_THEME,
        leading: Icon(Icons.arrow_back_ios , color: LightTheme.FONT_COLOR,),
        elevation: 0,
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          LotteryScreen(),
          LotteryScreen(),
          LotteryScreen(),
          LotteryScreen(),
          LotteryScreen(),
        ],
      ),
    );
  }
}
