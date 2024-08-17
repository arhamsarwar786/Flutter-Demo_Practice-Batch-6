

import 'package:flutter/material.dart';
import 'package:stack_linkedin_sample/utils/preferences.dart';

class ProductProvider extends ChangeNotifier{




  addProduct(product)async{
   await Preferences.addProduct(product);
   
  }

  getProduct(){

  }



}