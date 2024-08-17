

import 'package:flutter/material.dart';
import 'package:stack_linkedin_sample/controller/api_manager.dart';

import '../../model/university_model.dart';

class UniversityProvider extends ChangeNotifier{


  List<UniversityModel>? universitiesList;

  getUniversites({country = "india"})async{
    universitiesList = null;
    notifyListeners();
    var data = await ApiManager.getUniversities(country);
    universitiesList = data;
    notifyListeners();
  }

}