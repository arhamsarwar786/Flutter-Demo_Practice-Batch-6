import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stack_linkedin_sample/controller/provider/favourite_provider.dart';
import 'package:stack_linkedin_sample/controller/provider/home_provider.dart';
import 'package:stack_linkedin_sample/controller/provider/landing_provider.dart';
import 'package:stack_linkedin_sample/controller/provider/online_product_provider.dart';
import 'package:stack_linkedin_sample/controller/provider/product_provider.dart';
import 'package:stack_linkedin_sample/controller/provider/university_provider.dart';
import 'package:stack_linkedin_sample/controller/provider/weather_home_provider.dart';
import 'package:stack_linkedin_sample/view/counter_screen.dart';
import 'package:stack_linkedin_sample/view/home_screen.dart';
import 'package:stack_linkedin_sample/view/landing_screen.dart';
import 'package:stack_linkedin_sample/view/online_products_screen.dart';
import 'package:stack_linkedin_sample/view/product_screen.dart';
import 'package:stack_linkedin_sample/view/university/university_screen.dart';
import 'package:stack_linkedin_sample/view/weather/weather_home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> LandingProvider() ),
        ChangeNotifierProvider(create: (context)=> HomeProvider() ),
        ChangeNotifierProvider(create: (context)=> ProductProvider() ),
        ChangeNotifierProvider(create: (context)=> FavouriteProvider() ),
        ChangeNotifierProvider(create: (context)=> OnlineProductProvider() ),
        ChangeNotifierProvider(create: (context)=> WeatherHomeProvider() ),
        ChangeNotifierProvider(create: (context)=> UniversityProvider() ),
      ],
      child: MaterialApp(
          theme: ThemeData(fontFamily: "ubuntu"), home: HomeScreen()),
    );
  }
}


// 1- seprate provider file for each view 
// 2- seprate class with extend ChangeNotifier
// 3- Register our provivder File into MultiProvider 

// layers 

// 1- 
// read 
// Provider.of(context, listen: false);

// watch 
// consumer


// 2-

// read , watch = 2nd layer






// API = Application Programming Interface 
// API Methods

// GET, POST, DELETE , PUT, PATCH 

// URL 