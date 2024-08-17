import 'package:flutter/material.dart';

mySnackBar(context, text) {
  var snackBar = SnackBar(
    content: Row(
      children: [
       const Icon(
          Icons.done,
          size: 30,
          color: Colors.black,
        ),
        const SizedBox(
          width: 50,
        ),
        Text(text.toString())
      ],
    ),
    backgroundColor: Colors.orange,
  );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
