import 'package:flutter/material.dart';
import 'navigation_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'bookMe!',
     home: Navigation(),
   );
 }
}