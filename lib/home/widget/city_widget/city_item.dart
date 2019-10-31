import 'package:flutter/material.dart';

List<String> litems = ["1", "2", "Third", "4"];

class CityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 60.0,
        width: 60.0,
        margin: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
        decoration: new BoxDecoration(
          image: DecorationImage(
            image: new NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/b/b1/Merdeka_Square_Monas_02.jpg'),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.circle,
        ),
      ),
      Text(
        "Jakarta",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 10),
      )
    ]);
  }
}
