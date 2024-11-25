import 'package:flutter/material.dart';
import 'package:space_app/exploer_screen.dart';
import 'package:space_app/initial_screen.dart';

void main(){
  runApp(BasicScreen());
}

class BasicScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        InitialScreen.routName : (context)=> InitialScreen(),
        ExploreScreen.routeName: (context)=> ExploreScreen(),
      },
      initialRoute: InitialScreen.routName,
    );
  }
}