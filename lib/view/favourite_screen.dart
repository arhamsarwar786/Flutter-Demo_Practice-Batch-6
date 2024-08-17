import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stack_linkedin_sample/controller/provider/favourite_provider.dart';
import 'package:stack_linkedin_sample/data.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  void initState() {
    var provider = context.read<FavouriteProvider>();
    provider.getFavourites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Screen"),
        backgroundColor: Colors.orange,
      ),
      body: Builder(builder: (context) {
        var provider = context.watch<FavouriteProvider>();

        return provider.myProducts == null
            ? CircularProgressIndicator()
            : GridView.builder(
                itemCount: provider.myProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite,
                              size: 50,
                              color: Colors.grey,
                            )),
                        Image.network(provider.myProducts[index]["image"],
                            height: 200),
                        Text(provider.myProducts[index]["title"]),
                        Text(provider.myProducts[index]["price"].toString()),
                        Text(provider.myProducts[index]["category"]),
                        // Text(data[index]["description"]),
                      ],
                    ),
                  );
                });
      }),
    );
  }
}
