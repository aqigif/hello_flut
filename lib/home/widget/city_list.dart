import 'package:flut_test/home/widget/city_widget/city_item.dart';
import 'package:flut_test/home/widget/city_widget/current_city_item.dart';
import 'package:flutter/material.dart';

List<String> litems = ["1", "2", "Third", "4"];

class CityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        height: 70.0,
        child: new ListView.builder(
            itemCount: litems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext ctxt, int index) {
              if (index == 0) {
                return new CurrentCityItem(); // it's contain Neraby Button
              } else {
                return new CityItem();
              }
            }));
  }
}
