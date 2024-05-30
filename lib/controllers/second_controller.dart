import 'dart:convert';

import 'package:api_get/models/second_model.dart';

import 'package:http/http.dart' as http;

class SecondController {
  List<SecondModel> _list = [];
  List<SecondModel> get list => [..._list];

  Future<List<SecondModel>> getInfo() async {
    var data = await http.get(Uri.parse("https://api.escuelajs.co/api/v1/categories"));
    List json = jsonDecode(data.body);
    List<SecondModel> listtemp = [];

    for (var item in json) {
      listtemp.add(SecondModel(name: item['name'], imagepath: item['image'], id: item['id']));
    }

    return listtemp;
  }
}
