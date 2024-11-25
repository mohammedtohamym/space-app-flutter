import 'package:flutter/material.dart';
import 'package:space_app/explore_screen.dart';

void main(){
  runApp(BasicScreen());
}

class BasicScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExploreScreen(),
    );
  }
}