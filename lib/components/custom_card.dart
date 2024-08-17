import 'package:flutter/material.dart';
import 'package:stack_linkedin_sample/utils/constants.dart';


class CustomCard extends StatelessWidget {
  final color, index, selectedIndex, onTap;
  const CustomCard({required this.color, this.index, this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.circular(15),
          
        ),
      
        child: selectedIndex == index ?  Icon(Icons.done, size: 50,color: whiteColor,) : Container(),
      ),
    );
  }
}