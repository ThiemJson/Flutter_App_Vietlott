import 'package:flutter/cupertino.dart';

class SizeConfig{
  static double WIDHT;
  static double HEIGHT;

  static double WAITING_SCREEN_MAINTITLE;
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


  static double HOME_SCREEN_MAIN_CARDWIDTH;
  static double HOME_SCREEN_MAIN_BALL_SIZE;
  static double HOME_SCREEN_MAIN_NUMBER_BALL_SIZE;

  static double HOME_SCREEN_MAIN_SUBBALL_SIZE;
  static double HOME_SCREEN_MAIN_SUBNUMBER_BALL_SIZE;

  static double HOME_SCREEN_FLOATBUTTON_SIZE;
  static double HOME_SCREEN_FLOATBUTTON_CONTENT_SIZE;

  SizeConfig(BuildContext context){
      SizeConfig.WIDHT = MediaQuery.of(context).size.width;
      SizeConfig.HEIGHT = MediaQuery.of(context).size.height;

      WAITING_SCREEN_MAINTITLE = 65.0;
      WAITING_SCREEN_SUBTITLE = 19.0;
      WAITING_SCREEN_LOGOSIZE = 80.0;

      HOME_SCREEN_MAINT_BLOCK = HEIGHT * 0.35358445;

      HOME_SCREEN_MAINTITLE = 38.0;
      HOME_SCREEN_SUBTITLE = 15;
      HOME_SCREEN_LOGOSIZE = 65;

      HOME_SCREEN_MAIN_CARDWIDTH = HEIGHT * 0.08383961;
      HOME_SCREEN_MAIN_BALL_SIZE = HEIGHT * 0.05103281;
      HOME_SCREEN_MAIN_NUMBER_BALL_SIZE;

      HOME_SCREEN_OTHERLOTTERYTICKET;
      HOME_SCREEN_CARDTITLESIZE;
    }
}