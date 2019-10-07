import 'package:flut_test/home/widget/city_list.dart';
import 'package:flut_test/home/widget/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      SearchBar(),
      CityList(),
    ]));
  }
}
