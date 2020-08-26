import 'package:flutter/cupertino.dart';

class SizeConfig{
  static double WIDHT;
  static double HEIGHT;

  static double WAITING_SCREEN_MAINTITLE ;
  static double WAITING_SCREEN_SUBTITLE;
  static double WAITING_SCREEN_LOGOSIZE;

  static double HOME_SCREEN_MAINTITLE;
  static double HOME_SCREEN_SUBTITLE;
  static double HOME_SCREEN_LOGOSIZE;
  static double HOME_SCREEN_OTHERLOTTERYTICKET;
  static double HOME_SCREEN_CARDTITLESIZE;

  static double HOME_SCREEN_MAINT_BLOCK;
  static double HOME_SCREEN_MAINLOTTERY;
  static double HOME_SCREEN_SUBLOTTERY;

  static double HOME_SCREEN_MAIN_BALL_SIZE;
  static double HOME_SCREEN_MAIN_NUMBER_BALL_SIZE;

  static double HOME_SCREEN_MAIN_SUBBALL_SIZE;
  static double HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE;

  static double HOME_SCREEN_FLOATBUTTON_SIZE;
  static double HOME_SCREEN_FLOATBUTTON_CONTENT_SIZE;

  SizeConfig(BuildContext context){
      SizeConfig.WIDHT = MediaQuery.of(context).size.width;
      SizeConfig.HEIGHT = MediaQuery.of(context).size.height;
    }

}