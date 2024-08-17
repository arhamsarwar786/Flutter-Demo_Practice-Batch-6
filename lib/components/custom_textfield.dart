import 'package:flutter/material.dart';
import 'package:stack_linkedin_sample/utils/constants.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(      
      controller: TextEditingController(text: "Happy Birthday"),
      style: TextStyle(
        fontFamily: "dancing",
        color: whiteColor,

        fontSize: 40,
        fontWeight: FontWeight.bold
      ),
      decoration: InputDecoration(
        
        border: InputBorder.none,

        // border: OutlineInputBorder()
      ),
    );
  }
}