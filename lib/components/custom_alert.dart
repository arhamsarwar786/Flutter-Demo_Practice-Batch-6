import 'package:flutter/material.dart';

customAlert(context) async {


  return showDialog(
    context: context,
    barrierDismissible: false, 
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          children: [
            const Text('AlertDialog Title'),
              IconButton(onPressed: (){
          Navigator.pop(context);
         }, icon: Icon(Icons.close, color: Colors.red,))
          ],
        ),
        content: Column(children: [
          TextField(),
          ElevatedButton(onPressed: (){}, child: Text("Submit"))
        ],),
        // actions: <Widget>[
       
        // ],
      );
    },
  );
}