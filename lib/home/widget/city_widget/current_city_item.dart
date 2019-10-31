import 'package:flutter/material.dart';
import 'city_item.dart';

class CurrentCityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(
        children: <Widget>[
          Container(
              width: 10.0,
              height: 50.0,
              margin: const EdgeInsets.only(right: 5.0, bottom: 5.0)),
        ],
      ),
      Column(children: <Widget>[
        Container(
            width: 60.0,
            height: 60.0,
            margin: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(30.0),
              color: Colors.red,
            ),
            child: Icon(
              Icons.my_location,
              color: Colors.white,
            )),
        Text(
          "Nearby",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 10),
        )
      ]),
      Column(children: [
        CityItem()
      ])
    ]);
  }
}
