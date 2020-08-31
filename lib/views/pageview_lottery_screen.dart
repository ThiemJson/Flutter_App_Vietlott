import 'package:flutter/material.dart';
import 'package:flutter_vietlott/controllers/theme_config.dart';
import 'package:flutter_vietlott/resource/data/Data.dart';
import 'package:flutter_vietlott/views/lottery_ticket_screen.dart';
class PageViewLottery extends StatefulWidget {
  final DATA data;
  PageViewLottery({
    @required this.data
  });
  @override
  _PageViewLotteryState createState() => _PageViewLotteryState(data: data);
}

class _PageViewLotteryState extends State<PageViewLottery> {
  final DATA data;
  _PageViewLotteryState({
    @required this.data
  });
  @override
  Widget build(BuildContext context) {
    PageController _pageController = new PageController(
      initialPage: 5
    );
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
      body: PageView.builder(
        itemCount: data.listOfLastestLottery.length,
        itemBuilder: (context, index)=>LotteryScreen(data: data.listOfLastestLottery[index],),
      )
    );
  }
}
