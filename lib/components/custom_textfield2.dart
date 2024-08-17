import 'package:flutter/material.dart';
import 'package:stack_linkedin_sample/utils/constants.dart';


class CustomTextField2 extends StatelessWidget {
  final controller;
  const CustomTextField2({this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        // color: whiteColor,

        // fontSize: 20,
        // fontWeight: FontWeight.bold
      ),
      decoration: InputDecoration(
        
        // border: InputBorder.none,

        border: OutlineInputBorder()
      ),
    );
  }
}