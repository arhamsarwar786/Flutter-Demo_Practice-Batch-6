


import 'package:flutter/material.dart';

class LandingProvider extends ChangeNotifier{

  int count = 0;

  addCount(){
    count++;
    notifyListeners();
  }

    resetCount(){
    count = 0;
  }

  removeCount(){
    count--;
  }

}

