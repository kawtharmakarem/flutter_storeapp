import 'package:flutter/material.dart';
import 'package:flutter_storeapp/screens/home_page.dart';
import 'package:flutter_storeapp/screens/update_product_page.dart';
import 'package:flutter_storeapp/services/update_product.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id:(context) => HomePage(),
        UpateProductPage.id:(context)=>UpateProductPage()
      },
    );
  }
}