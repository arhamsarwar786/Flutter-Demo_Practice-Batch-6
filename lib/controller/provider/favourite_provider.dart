

import 'package:flutter/material.dart';
import 'package:stack_linkedin_sample/utils/preferences.dart';

class FavouriteProvider extends ChangeNotifier{

  var myProducts;

  getFavourites()async{
   var data = await Preferences.getProducts();
   if(data != null){
    myProducts = data;
    notifyListeners();
   }
  }
  
}