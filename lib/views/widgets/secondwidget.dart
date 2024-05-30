import 'package:api_get/models/second_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Secondwidget extends StatelessWidget {
  SecondModel model;
  Secondwidget({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          height: 150,
          width: MediaQuery.of(context).size.width / 2 - 15,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), image: DecorationImage(image: NetworkImage(model.imagepath))),
        ),
        const Gap(5),
        Text(
          model.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
