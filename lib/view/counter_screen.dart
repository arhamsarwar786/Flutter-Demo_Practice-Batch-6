import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  void initState() {
    super.initState();
    getCount();
  }

  addCount() async {
    count++;
    final sp = await SharedPreferences.getInstance();
    sp.setInt("room1", count);
  }

  resetCount() async {
    count = 0;
    final sp = await SharedPreferences.getInstance();
    sp.setInt("room1", count);
  }

   removeCount() async {
    if(count>0){
    count--;
    final sp = await SharedPreferences.getInstance();
    sp.setInt("room1", count);
    }else{
     const snackBar = SnackBar(
  content: Text('Negitive Value Not Allow'),
);

ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  getCount()async{
    final sp = await SharedPreferences.getInstance();
    var data = sp.getInt("room1");
    print(data);
    if(data != null){
      count = data;
      setState(() {
        
      });
    }
  }

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          SizedBox(width: 50,),
           FloatingActionButton(
            child: Icon(Icons.refresh),
            onPressed: () {
  resetCount();
          getCount();
          }),SizedBox(width: 50,),
          FloatingActionButton(
             child: Icon(Icons.add),
            onPressed: () {
          addCount();
          getCount();
          }),SizedBox(width: 50,),
          FloatingActionButton(
             child: Icon(Icons.remove),
            onPressed: () {
          removeCount();
          getCount();
          }),SizedBox(width: 50,),
          // FloatingActionButton(
          //    child: Icon(Icons.reset_tv_outlined),
          //   onPressed: () {
          // addCount();
          // // getCount();
          // }),
        ],
      ),
      body: Center(
          child: Text(
        "$count",
        style: TextStyle(fontSize: 300, fontWeight: FontWeight.bold),
      )),
    );
  }
}
