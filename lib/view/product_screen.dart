import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stack_linkedin_sample/controller/provider/product_provider.dart';
import 'package:stack_linkedin_sample/data.dart';
import 'package:stack_linkedin_sample/utils/my_snackbar.dart';
import 'package:stack_linkedin_sample/view/favourite_screen.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      backgroundColor: Colors.orange,
        actions: [IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> FavouriteScreen() ) );
        }, icon: Icon(Icons.favorite)), SizedBox(width: 200,)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Clothes",style: TextStyle(fontSize: 40),),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context, index){
            return Container(
              child: Column(
                children: [
            IconButton(onPressed: (){
              var provider = context.read<ProductProvider>();
              provider.addProduct(data[index]);
              mySnackBar(context, "Product Added Successfully!");
            
            }, icon: Icon(Icons.favorite,size: 50,color: Colors.grey,)),
            Image.network(data[index]["image"], height: 200),
            Text(data[index]["title"]),
            Text(data[index]["price"].toString()),
            Text(data[index]["category"]),
            // Text(data[index]["description"]),
                ],
              ),
            );
            } ),
          ],
        ),
      ),
    );
  }
}