

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Lottie.asset("assets/loaders/loader.json", height: 300) );
  }
}