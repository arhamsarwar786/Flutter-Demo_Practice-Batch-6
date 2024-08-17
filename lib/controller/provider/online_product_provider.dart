


import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OnlineProductProvider extends ChangeNotifier{

  var myProducts;


  getProducts()async{
    // final url = Uri.parse("https://fakestoreapi.com/products");
    final url = Uri.parse("https://api.escuelajs.co/api/v1/products");
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    myProducts = data;
    notifyListeners();
  
    
  }



}