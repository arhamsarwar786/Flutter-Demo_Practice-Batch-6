import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stack_linkedin_sample/controller/provider/landing_provider.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        var provider = Provider.of(context, listen: false);
        // var provider = context.read<LandingProvider>();
        provider.addCount();
        
      }),
      body: Wrap(
        children: [
          Hero(
            tag: "arham",
            child: Text("Move to Next"))  ,
          Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),
        Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),
          Builder(
            builder: (context) {
            var provider = context.watch<LandingProvider>();
            return Text(
              provider.count.toString(),
              style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
            );
          }),
          Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),Text(
          "1",
          style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
        ),
        // Builder(
        //   builder: (context) {
        //     var p = context.watch<LandingProvider>();
        //     return Text(
        //       p.count.toString(),
        //       style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold,color: Colors.red),
        //     );
        //   }
        // ),

         Consumer<LandingProvider>(
           builder: (context, p ,child) {
             return Text(
                  p.count.toString(),
                  style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold,color: Colors.red),
                );
           }
         )
        ],
      ),
    );
  }
}
