import 'package:flutter/material.dart';

customBottomSheet(context) {
  return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          // height: 200,
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      });
}
