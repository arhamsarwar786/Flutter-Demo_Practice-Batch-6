import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static addProduct(Map product) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var list = await getProducts();

    if (list != null) {
      list.add(product);
    } else {
      list = [product];
    }

    pref.setString("fav", jsonEncode(list));
  }
/////////////////////////////////////////////

  static getProducts() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var data = pref.getString("fav");
    if (data != null) {
      return jsonDecode(data);
    }
  }
}
