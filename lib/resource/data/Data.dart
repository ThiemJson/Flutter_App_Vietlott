import 'dart:convert';

import 'package:flutter_vietlott/controllers/crawlers/crawl_data.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_100_Bo3so.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_100_CapSo.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_100_xuat_hien_nhieu_nhat.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_lottery_ticker.dart';

class DATA {
  List<Result_100_xuat_hien_nhieu_nhat> listOfMostAppOneBall;
  List<Result_100_CapSo>                listOfMostAppTwoBall;
  List<Result_100_Bo3so>                listOfMostAppThreeBall;
  List<Result_lottery_ticker>           listOfLastestLottery;

  DATA(){
    this.listOfLastestLottery = new List<Result_lottery_ticker>();
    this.listOfMostAppThreeBall = new List<Result_100_Bo3so>();
    this.listOfMostAppTwoBall = new List<Result_100_CapSo>();
    this.listOfMostAppOneBall = new List<Result_100_xuat_hien_nhieu_nhat>();
  }

  DATA.FromJson(Map<String, dynamic> json):listOfMostAppOneBall = json['listOfMostAppOneBall'],listOfMostAppTwoBall = json['listOfMostAppTwoBall'],listOfMostAppThreeBall = json['listOfMostAppThreeBall'],listOfLastestLottery = json['listOfLastestLottery'];
  Map<String, dynamic> toJson() =>
      {
        'listOfMostAppOneBall': listOfMostAppOneBall,
        'listOfMostAppThreeBall': listOfMostAppThreeBall,
        'listOfMostAppTwoBall': listOfMostAppTwoBall,
        'listOfLastestLottery': listOfLastestLottery,
      };

  Future getData() async {
    CrawlData _crawLData =  new CrawlData();
    String jsonData = '';
    await _crawLData.getDom().then(
      (value) =>
      {
        _crawLData.document = value,
        this.listOfMostAppThreeBall = _crawLData.Bo3So_Nhieu(),
        this.listOfMostAppTwoBall =  _crawLData.CapSo_Nhieu(),
        this.listOfMostAppOneBall = _crawLData.Bo_so_xuat_hien_nhieu_nhat(),
        this.listOfLastestLottery = _crawLData.get_lottery_ticket(),
        //jsonData = jsonEncode(_crawLData),
      });

  }
}

