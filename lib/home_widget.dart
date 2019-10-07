import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Row(children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(top: 40.0, left: 20.0,  right: 20.0),
          height: 50.0,
          padding: const EdgeInsets.all(10),
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(25.0),
            color: Colors.blueGrey[50],
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Search your comfort room',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )),
        Container(
          margin: const EdgeInsets.only(top: 40.0, right: 20.0),
            child: Icon(
          Icons.confirmation_number,
          color: Colors.yellow[700],
        ))
      ]),
    ]));
  }
}
