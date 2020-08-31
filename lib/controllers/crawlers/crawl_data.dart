import 'package:flutter/services.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_100_Bo3so.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_100_CapSo.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_100_bo_so.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_100_xuat_hien_it_nhat.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_100_xuat_hien_nhieu_nhat.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_lottery_ticker.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/Result_muoi_ki_quay_gan_nhat.dart';
import 'package:flutter_vietlott/controllers/crawlers/widgets/table_ticket.dart';
import 'package:http/http.dart' as http; // Contains a client for making API calls
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as Dom;
// Contains DOM related classes for extracting data from elements

class CrawlData{
  Dom.Document document;
  CrawlData(){
    this.getDom().then((value) => {
      this.document = value,
      this.get_lottery_ticket()
      });
  }
  Future<Dom.Document> getDom() async {
    List<Dom.Element> listOfElement = new List<Dom.Element>();
    http.Response response = await http.get('https://atrungroi.com/xstc-xo-so-tu-chon-mega-645-vietlott.html?fbclid=IwAR0iiVDbV76mnDJKim9IkhqMYF3mfgICbArrf9sTGjPxJ2I_GX0sBju3v3g');
    Dom.Document document =  parser.parse(response.body);
    return document;
  }

  List<Result_muoi_ki_quay_gan_nhat> Muoi_ki_quay_gan_nhat() {
    List<Result_muoi_ki_quay_gan_nhat> listOfResult = List<Result_muoi_ki_quay_gan_nhat>();
    List<Dom.Element> element = this.document.getElementsByClassName('section vietlott-lastest');
    List<Dom.Element> listOfNoneJackpot = element[0].querySelectorAll('table tbody tr');


    listOfNoneJackpot.forEach((Dom.Element element) {
      String date = element.getElementsByClassName('date')[0].text;
      String jackpot = element.getElementsByClassName('jackpot-win ')[0].text;
      if(jackpot.length > 20){
        jackpot = jackpot.substring(15, jackpot.length - 2 );
      }else{
        jackpot = jackpot.substring(0, jackpot.length - 2 );
      }
      String ketqua = '';
      element.getElementsByClassName('ball red').forEach((element) {
        ketqua+=element.text;
      });
      Result_muoi_ki_quay_gan_nhat data = new Result_muoi_ki_quay_gan_nhat(jackpot: jackpot, ketqua: ketqua, ngay: date);
      listOfResult.add(data);
    });
    return listOfResult;
  }

  List<Result_100_bo_so> Bo_so_trong_100_lan_quay(){
    List<Result_100_bo_so> listOfResult = new List<Result_100_bo_so>();
    List<Dom.Element> element = this.document.getElementsByClassName('section section-stats power-655');
    List<Dom.Element> listOfTr = element[0].querySelectorAll('tbody tr td');
    String so = '';
    String solan = '';
    listOfTr.forEach((Dom.Element element) {
      if(so == ''){
        so = element.text;
      }
      else if( so != '' && solan == ''){
        solan = element.text.substring(0,2);
        Result_100_bo_so data = new Result_100_bo_so(boso: so, solan: solan);
        listOfResult.add(data);
        so = '';
        solan = '';
      }
    });
    return listOfResult;
  }

  List<Result_100_xuat_hien_nhieu_nhat> Bo_so_xuat_hien_nhieu_nhat(){
    List<Result_100_xuat_hien_nhieu_nhat> listOfResult = new List<Result_100_xuat_hien_nhieu_nhat>();
    List<Dom.Element> element = this.document.getElementsByClassName('section section-stats mega-645 _tk_tuansuat_10so');
    List<Dom.Element> listOfTr = element[0].querySelectorAll('tbody tr td');
    String so = '';
    String solan = '';
    listOfTr.forEach((Dom.Element element) {
      if(so == ''){
        so = element.text;
      }
      else if( so != '' && solan == ''){
        solan = element.text.substring(0,2);
        Result_100_xuat_hien_nhieu_nhat Data = new Result_100_xuat_hien_nhieu_nhat(boso: so, solan: solan);
        listOfResult.add(Data);
        so = '';
        solan = '';
      }
    });
    return listOfResult;
  }

  List<Result_100_xuat_hien_it_nhat> Bo_so_xuat_hien_it_nhat(){
    List<Result_100_xuat_hien_it_nhat> listOfResult = new List<Result_100_xuat_hien_it_nhat>();
    List<Dom.Element> element = this.document.getElementsByClassName('section section-stats mega-645 _tk_tuansuat_10so _itnhat');
    List<Dom.Element> listOfTr = element[0].querySelectorAll('tbody tr td');
    String so = '';
    String solan = '';
    listOfTr.forEach((Dom.Element element) {
      if(so == ''){
        so = element.text;
      }
      else if( so != '' && solan == ''){
        solan = element.text.substring(0,2);
        Result_100_xuat_hien_it_nhat Data = new Result_100_xuat_hien_it_nhat(boso: so, solan: solan);
        listOfResult.add(Data);
        so = '';
        solan = '';
      }
    });
    return listOfResult;
  }

  List<Result_100_CapSo> CapSo_LienTiep(){
    List<Result_100_CapSo> listOfResult = new List<Result_100_CapSo>();
    List<Dom.Element> element = this.document.getElementsByClassName('section section-stats mega-645 _tk_tuansuat_10so _itnhat');
    List<Dom.Element> listOfTr = element[1].querySelectorAll('tbody tr td');
    String boso = '';
    String solan = '';
    listOfTr.forEach((Dom.Element element) {
      if(boso == '' && solan == ''){
        boso = element.text;
      }
      else if(boso != '' && solan == ''){
        solan = element.text.substring(0,2);
        Result_100_CapSo data = Result_100_CapSo(boso1: boso.substring(0,2), boso2:  boso.substring(2,4), solan: solan);
        listOfResult.add(data);
        boso ='';
        solan ='';
      }
    });
    return listOfResult;
  }

  List<Result_100_CapSo> CapSo_Nhieu(){
    List<Result_100_CapSo> listOfResult = new List<Result_100_CapSo>();
    List<Dom.Element> element = this.document.getElementsByClassName('section section-stats mega-645 _tk_tuansuat_10so _itnhat');
    List<Dom.Element> listOfTr = element[2].querySelectorAll('tbody tr td');
    String boso = '';
    String solan = '';
    listOfTr.forEach((Dom.Element element) {
      if(boso == '' && solan == ''){
        boso = element.text;
      }
      else if(boso != '' && solan == ''){
        solan = element.text.substring(0,2);
        Result_100_CapSo data = Result_100_CapSo(boso1: boso.substring(0,2), boso2:  boso.substring(2,4), solan: solan);
        listOfResult.add(data);
        boso ='';
        solan ='';
      }
    });
    return listOfResult;
  }

  List<Result_100_Bo3so> Bo3So_Nhieu(){
    List<Result_100_Bo3so> listOfResult = new List<Result_100_Bo3so>();
    List<Dom.Element> element = this.document.getElementsByClassName('section section-stats mega-645 _tk_tuansuat_10so _itnhat');
    List<Dom.Element> listOfTr = element[3].querySelectorAll('tbody tr td');
    String boso = '';
    String solan = '';
    listOfTr.forEach((Dom.Element element) {
      if(boso == '' && solan == ''){
        boso = element.text;
      }
      else if(boso != '' && solan == ''){
        solan = element.text.substring(0,2);
        Result_100_Bo3so data = Result_100_Bo3so(boso1: boso.substring(0,2), boso2:  boso.substring(2,4),boso3: boso.substring(4,6) , solan: solan);
        listOfResult.add(data);
        boso ='';
        solan ='';
      }
    });
    return listOfResult;
  }

  List<Result_lottery_ticker> get_lottery_ticket(){
    String boso = '';
    String ngay = '';
    String kiquaythuong = '';
    String giatri ='';
    List<String> songuoitrung = [];

    List<Result_lottery_ticker> listOfResult = new List<Result_lottery_ticker>();
    List<Dom.Element> element = this.document.getElementsByClassName('vietlott-item mega-645 js-result-mega-wrap ');
    
    element.forEach((Dom.Element element) { 
      element.getElementsByClassName('balls mega-645 js-result-number').forEach((element) {
        boso = element.text;
      });
      giatri = element.getElementsByClassName('table table-striped')[0].querySelectorAll('tbody tr td')[2].text;
      element.getElementsByClassName('table table-striped')[0].querySelectorAll('tbody tr').forEach((element) {
        String tempStr = element.querySelectorAll('td').last.text.trim();
        if(tempStr.length > 10){
          tempStr = tempStr.substring(tempStr.length - 1);
        }
        songuoitrung.add(tempStr);
      });
      String temp = element.querySelector('div').text;
      kiquaythuong = temp.substring(16,20);
      ngay = temp.substring(28, temp.length);
      TableTicket tb = new TableTicket(giatri: giatri, songuoitrung: songuoitrung);
      Result_lottery_ticker data = new Result_lottery_ticker(tableTicket: tb, boso: boso, ngay: ngay, kiquaythuong: kiquaythuong);
      listOfResult.add(data);
      boso = '';
      ngay = '';
      kiquaythuong = '';
      giatri ='';
      songuoitrung = new List<String>();
    });
    return listOfResult;
  }
}