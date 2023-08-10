import 'package:App_Test/utils/math_utils.dart';
import 'package:flutter/material.dart';

class PayProvider extends ChangeNotifier {
  List<int> selectingSeat = [];
  double width = size.width * 0.02;
  selectSeat(int seatNo) {
    selectingSeat.add(seatNo);
    print('select seat No $seatNo');
    notifyListeners();
  }

  unSelectSeat(int seatNo) {
    selectingSeat.remove(seatNo);
    print('unSelect seat No $seatNo');

    notifyListeners();
  }

  update() {
    notifyListeners();
  }
}
