import 'dart:math';

import 'package:flutter_vietlott/models/class/CardClass.dart';

class FakeData {
  List<CardClass> listFakeData;
  FakeData(){
    listFakeData = new List<CardClass>();
    Random rnd = new Random();
    for(int i = 0 ; i < 10 ; i ++ ){
      listFakeData.add(
        CardClass(
          first_number: rnd.nextInt(100),
          second_number: rnd.nextInt(100),
          third_number: rnd.nextInt(100),
          four_number: rnd.nextInt(100),
          five_number: rnd.nextInt(100),
          six_number: rnd.nextInt(100),
          state: rnd.nextInt(1000),
          date: "${rnd.nextInt(31)}-${rnd.nextInt(13)}-${2020}",
        )
      );
    }
  }
}