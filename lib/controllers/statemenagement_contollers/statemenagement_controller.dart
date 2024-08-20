


import 'package:flutter/cupertino.dart';

class StatemenagementContoller extends ChangeNotifier{

  int astaghfar = 0;

  void incrementZikar(){
    astaghfar = astaghfar + 1;
    notifyListeners();
  }

}