import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stack_linkedin_sample/controller/provider/online_product_provider.dart';

class OnlineProductScreen extends StatefulWidget {
  const OnlineProductScreen({super.key});

  @override
  State<OnlineProductScreen> createState() => _OnlineProductScreenState();
}

class _OnlineProductScreenState extends State<OnlineProductScreen> {
  @override
  void initState() {
    super.initState();
    OnlineProductProvider provider = context.read<OnlineProductProvider>();

    provider.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        var provider = context.watch<OnlineProductProvider>();
        return provider.myProducts == null
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
              itemCount: provider.myProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (_, i) {
                  return Container(
                    color: Colors.green,
                    child: Column(children: [
                      Image.network(provider.myProducts[i]["category"]["image"], height: 100,),
                      Text(provider.myProducts[i]["title"]),
                      Text(provider.myProducts[i]["price"].toString())
                    ],),
                  );
                });
      }),
    );
  }
}
