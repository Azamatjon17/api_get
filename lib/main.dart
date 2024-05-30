import 'package:api_get/controllers/productcontrollers.dart';
import 'package:api_get/views/screens/first_page.dart';
import 'package:api_get/views/screens/second_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

ProductControllers productControllers = ProductControllers();

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage(productControllers: productControllers)));
                },
                child: const Text("First page")),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondPage()));
                },
                child: const Text("Secon page")),
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage(productControllers: productControllers)));
                },
                child: const Text("First page"))
          ],
        ),
      ),
    );
  }
}
