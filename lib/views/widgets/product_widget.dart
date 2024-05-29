import 'package:api_get/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

// ignore: must_be_immutable
class ProductWidget extends StatelessWidget {
  Product product;
  ProductWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 15,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 15,
              height: 150,
              child: Image.network(
                product.imagepath,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(10),
            Text(
              "\$${product.price}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const Gap(5),
            Text(
              product.title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const Gap(5),
            Text(
              product.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}