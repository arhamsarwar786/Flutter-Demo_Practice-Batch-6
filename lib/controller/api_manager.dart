import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:stack_linkedin_sample/model/university_model.dart';
import 'package:stack_linkedin_sample/model/weather_home_model.dart';


class ApiManager{
  static getWeatherApi(city)async{
    // debugger();
    final url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$city&appid=b189f31bd264510e4848acac84074ab4");
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    WeatherHomeModel resData  = WeatherHomeModel.fromJson(data);
    return resData ;
  }

  ///////////// University API
  
  static getUniversities(country)async{

    final url = Uri.parse("http://universities.hipolabs.com/search?country=$country");

    final res = await http.get(url);
    var data = jsonDecode(res.body);
    // model pending 
    // debugger();
    var resData = universityModelFromJson(jsonEncode(data));
    // debugger();
    return resData ;

  }

}



// If Response Starts from MAP / JSON / Object / Dictionary 
// UniversityModel.fromJson( )
// No encode is require 
// UniversityModel

// If Response Starts List / Array
// universityModelFromJson with the type LIST
// encode is required
// List<UniversityModel>