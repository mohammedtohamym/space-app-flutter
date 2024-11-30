import 'package:flutter/material.dart';
import 'package:space_app/exploer_screen.dart';
import 'package:space_app/initial_screen.dart';
import 'package:space_app/plant_data_class.dart';
import 'package:space_app/plant_screen.dart';

void main(){
  runApp(BasicScreen());
  // PlanetData planetData = PlanetData();
  // planetData.loadData();
}

class BasicScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        InitialScreen.routeName : (context)=> InitialScreen(),
        ExploreScreen.routeName: (context)=> ExploreScreen(),
        PlanetScreen.routeName: (context)=> PlanetScreen(),
      },
      initialRoute: InitialScreen.routeName,
    );
  }
}