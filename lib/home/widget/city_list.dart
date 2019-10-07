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
                return new Row(children: [
                  Column(
                    children: <Widget>[
                      Container(
                          width: 10.0,
                          height: 50.0,
                          margin:
                              const EdgeInsets.only(right: 5.0, bottom: 5.0)),
                    ],
                  ),
                  Column(children: <Widget>[
                    Container(
                        width: 50.0,
                        height: 50.0,
                        margin: const EdgeInsets.only(
                            left: 5.0, right: 5.0, bottom: 5.0),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(25.0),
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
                  ])
                ]);
              } else {
                return new Column(children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    margin: const EdgeInsets.only(
                        left: 5.0, right: 5.0, bottom: 5.0),
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
              // return new Text(litems[index]);
            }));
  }
}
