
import 'package:flutter/material.dart';
import 'package:flutter_storeapp/models/product_model.dart';
import 'package:flutter_storeapp/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    super.key,required this.product
  });
  ProductModel product;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(UpateProductPage.id);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
        Container(
            
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                offset: Offset(10, 10)
              )]
            ),
            child: Card(
              color: Colors.white,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(product.title.substring(0,6),style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                    ),),
                    const SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$''${product.price}',style: TextStyle(fontSize: 16),),
                        Icon(Icons.favorite,color: Colors.red,)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        Positioned(
          right: 32,
          top: -60,
          child: Image.network(product.image,height: 100,width: 100,))
        ],
      ),
    );
  }
}