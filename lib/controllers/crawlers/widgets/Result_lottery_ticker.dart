import 'package:flutter/cupertino.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/table_ticket.dart';

class Result_lottery_ticker{
  final String kiquaythuong;
  final String ngay;
  final String boso;
  final TableTicket tableTicket;

  Result_lottery_ticker({
    @required this.tableTicket,
    @required this.boso,
    @required this.ngay,
    @required this.kiquaythuong
  });
}