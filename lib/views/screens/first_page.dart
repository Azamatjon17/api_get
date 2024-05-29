import 'package:api_get/controllers/productcontrollers.dart';
import 'package:api_get/views/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  final ProductControllers productControllers;

  const FirstPage({required this.productControllers, super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late final ProductControllers productControllers;
  bool _isLoading = true;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    productControllers = widget.productControllers;
    _fetchProducts();
  }

  Future<void> _fetchProducts() async {
    try {
      await productControllers.getUser();
      setState(() {
        _isLoading = false;
        _hasError = false;
      });
    } catch (error) {
      setState(() {
        _isLoading = false;
        _hasError = true;
      });
      print('Error fetching products: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _hasError
              ? const Center(child: Text('Failed to load products'))
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: productControllers.products.length,
                  itemBuilder: (context, index) {
                    return ProductWidget(productControllers.products[index]);
                  },
                ),
    );
  }
}
