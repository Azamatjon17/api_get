import 'package:api_get/controllers/productcontrollers.dart';
import 'package:api_get/views/screens/first_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  ProductControllers productControllers = ProductControllers();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(
        productControllers: productControllers,
      ),
    );
  }
}
