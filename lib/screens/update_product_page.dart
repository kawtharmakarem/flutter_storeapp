import 'package:flutter/material.dart';
import 'package:flutter_storeapp/widgets/custom_button.dart';
import 'package:flutter_storeapp/widgets/custom_textfield.dart';

class UpateProductPage extends StatelessWidget {
   UpateProductPage({super.key});
  static String id="updatepageproduct";
  String? productName,description,image;
  int? price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UpdatePage',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100,),
            CustomTextField(
              hintText: 'ProductName',
              onChange: (data){
                productName=data;
              },
            ),
            const SizedBox(height: 10,),
            CustomTextField(
              hintText: 'Description',
              onChange: (data){
                description=data;
              },
            ),
            const SizedBox(height: 10,),
            CustomTextField(
              textInputType: TextInputType.number,
              hintText: 'Price',
              onChange: (data){
                price=int.parse(data);
              },
            ),
            const SizedBox(height: 10,),
            CustomTextField(
              hintText: 'Image',
              onChange: (data){
                image=data;
              },
            ),
            const SizedBox(height: 50,),
            CustomButton(text: 'Update')
          ],),
        ),
      ),
    );
  }
}