import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stack_linkedin_sample/controller/api_manager.dart';
import 'package:stack_linkedin_sample/model/weather_home_model.dart';
import 'package:video_player/video_player.dart';

class WeatherHomeProvider extends ChangeNotifier {
  WeatherHomeModel? weatherData;
  VideoPlayerController? controller;

  getWeather({city = "karachi"}) async {
    var res = await ApiManager.getWeatherApi(city);
    weatherData = res;
    initVideo();
    notifyListeners();
  }

  weatherImage(String weather) {
    weather = weather.toLowerCase();
    if (weather == "clear") {
      return "assets/clear.jpeg";
    } else if (weather == "rain") {
      return "assets/rain.jpeg";
    } else if (weather == "clouds") {
      return "assets/cloud.jpeg";
    } else if (weather == "drizzle") {
      return "assets/Drizzle.jpeg";
    } else if (weather == "haze") {
      return "assets/haze.jpeg";
    } else if (weather == "smoke") {
      return "assets/smog.jpg";
    } else {
      return "assets/clear.jpeg";
    }
  }

  initVideo() {
    controller = VideoPlayerController.asset("assets/haze.mp4")
      ..initialize().then((_) {
        controller!.play();
        controller!.setLooping(true);
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      });
  }
}



// Convert JSON to Dart model online and make a file model 
// Change data type to Model 
// WeatherHomeModel.fromJson(data);