import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:space_app/explore_screen_widgets/planet_title.dart';
import 'package:space_app/explore_screen_widgets/planets.dart';
import 'package:space_app/plant_data_class.dart';

import 'navigation_button.dart';

class ExplorerBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExplorerBodyState();
  }
}

class  _ExplorerBodyState extends State<ExplorerBody>{
  List<String> planets = ['Sun', 'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'];


  List<String> imagePaths = [
    'assets/images/sun.png',
    'assets/images/mercury.png',
    'assets/images/venus.png',
    'assets/images/earth.png',
    'assets/images/mars.png',
    'assets/images/jupiter.png',
    'assets/images/saturn.png',
    'assets/images/uranus.png',
    'assets/images/neptune.png'
  ];

  int index = 0 ;

  // Future <List<List>> planetData = PlanetData().loadData();
  // List<List> planetDataList = await plantData;

  // PlanetSwipe planetSwipe = PlanetSwipe(index: 1,);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Todo: make a dataClass for planets

        // Probably make all of these one big stateful widget?

        /* Showing planet Image */
        // Todo: this should be stateful widget
        // PlanetSwipe(index: index),
        //
        Expanded(
          child: Image.asset(imagePaths[index]),
          // ),
        ),
        /* Showing planet title & swiping buttons */
        //
        //
        PlantTitle(planets: planets, index: index, myLeft: myLeft, myRight: myRight,),


        /* Navigation to selected planet button section */
        //
        //
        PlanetNavigtionButton(planets: planets, index: index,)
      ],
    );
  }

  /* these two functions are responsible for changing the text on the button */
  void myRight(){
    index++;
    if(index > 8){
      index = 0;
    }
    setState(() {

    });
  }
  void myLeft(){
    index--;
    if(index < 0){
      index = 8;
    }
    setState(() {

    });
  }
}