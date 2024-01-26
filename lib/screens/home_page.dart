import 'package:flutter/material.dart';
import 'package:flutter_storeapp/models/product_model.dart';
import 'package:flutter_storeapp/services/get_all_products_services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id="homepage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.white,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.cartPlus))
      ],
      elevation: 0.0,
      title: Text('NewTern',style: TextStyle(color: Colors.black),),
      centerTitle: true,
    ),
    body: Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 65),
      child:FutureBuilder<List<ProductModel>>(
        builder: (context, snapshot){
          if(snapshot.hasData){
            List<ProductModel> products=snapshot.data!;
            return GridView.builder(
              itemCount: products.length,
        clipBehavior: Clip.none,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 100), 
        itemBuilder: (context,index){
          return CustomCard(product: products[index]);
        });
          }else{
           return Center(child: CircularProgressIndicator(),); 
          }
        }, future:AllProductsService().getAllProducts() ,
      )
    )
    );
  }
}
