import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
 final name;

 PlaceholderWidget(this.name);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text(name, style: TextStyle(color: Colors.black),),
      backgroundColor: Colors.white,
    ),
   );
  }
}