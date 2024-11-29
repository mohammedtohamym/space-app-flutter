import 'package:flutter/material.dart';
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
  List<String> planets = ['Earth', 'Mars', 'Mercury'];
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
        PlanetSwipe(index: index),

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
    if(index > 2){
      index = 0;
    }
    setState(() {

    });
  }
  void myLeft(){
    index--;
    if(index < 0){
      index = 2;
    }
    setState(() {

    });
  }
}