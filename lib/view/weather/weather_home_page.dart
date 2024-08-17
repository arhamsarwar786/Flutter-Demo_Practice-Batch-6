import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:stack_linkedin_sample/controller/provider/weather_home_provider.dart';
import 'package:stack_linkedin_sample/utils/common_utils.dart';
import 'package:stack_linkedin_sample/utils/my_snackbar.dart';
import 'package:video_player/video_player.dart';

class WeatherHomePage extends StatefulWidget {
  const WeatherHomePage({super.key});

  @override
  State<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends State<WeatherHomePage> {
  @override
  void initState() {
    super.initState();
    WeatherHomeProvider provider = context.read<WeatherHomeProvider>();
    provider.getWeather();
  }

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Builder(builder: (context) {
          WeatherHomeProvider provider = context.watch<WeatherHomeProvider>();
          return provider.weatherData == null
              ? CircularProgressIndicator()
              : Stack(
                  children: [
                    (provider.controller != null)
                        ? VideoPlayer(provider.controller!)
                        : CircularProgressIndicator(),
                    Container(
                      height: size.height,
                      width: size.width,
                      // decoration: BoxDecoration(
                      //   image: DecorationImage(
                      //       image: AssetImage(
                      //         provider.weatherImage(
                      //             provider.weatherData["weather"][0]["main"]),
                      //       ),
                      //       fit: BoxFit.cover),
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextField(
                              controller: searchController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      size: 50,
                                    ),
                                    onPressed: () {
                                      if (searchController.text.isEmpty) {
                                        mySnackBar(context,
                                            "Please! Enter Valid City Name :)");
                                      } else {
                                        provider.getWeather(
                                            city: searchController.text);
                                      }
                                    },
                                  )),
                            ),
                            Text(
                              "${(provider.weatherData!.main.temp - 273.15).round()}°",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              provider.weatherData!.name,
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Weather : ${provider.weatherData!.weather[0].main}",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Feels Like : ${provider.weatherData!.main.feelsLike}",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Min Temperature:  ${provider.weatherData!.main.tempMin}",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Max Temperature:  ${provider.weatherData!.main.tempMax}",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Pressure:  ${provider.weatherData!.main.pressure}",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Humidity:  ${provider.weatherData!.main.humidity}",
                              style: TextStyle(color: Colors.white),
                            ),
                            InkWell(
                              onTap: () {
                                customlaunchUrl(
                                    "https://arham786.netlify.app/");
                              },
                              child: Text(
                                "${DateFormat("d-MMM-yyyy hh:mm:ss a").format(DateTime.now())}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),

                           
                          ],
                        ),
                      ),
                    ),
                  ],
                );
        }),
      ),
    );
  }
}

// y = Year 
// yy = 24 
// yyyy = 2024 

// M = month 
// m = min
// s = second 
// d = day  

// a | p = AM | PM 






// b189f31bd264510e4848acac84074ab4

// 33.23188573157665, 73.07225010262627