import 'package:flutter/material.dart';

class PlantTitle extends StatefulWidget{
  Function myLeft;
  Function myRight;
  List<String> planets ;
  int index  ;


  PlantTitle({required this.planets, required this.index,
              required this.myRight, required this.myLeft});

  @override
  State<StatefulWidget> createState() {
    return _planetTitle();
  }
}

class _planetTitle extends State<PlantTitle>{
  // List<String> planets = ['Earth', 'Mars', 'Mercury'];
  // int index = 2 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      // color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SwipeButton(iconOfButton: Icons.arrow_back,
              onButtonPress: widget.myLeft),
            Text(widget.planets[widget.index],style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
              textAlign: TextAlign.left,
            ),
            SwipeButton(iconOfButton: Icons.arrow_forward,
              onButtonPress: widget.myRight,),
          ],
        ),
      ),
    );
  }


  /* these two functions are responsible for changing the text on the button */
  // void changePlanetNameRight(){
  //   widget.index++;
  //   if(widget.index > 2){
  //     widget.index = 0;
  //   }
  //   setState(() {
  //
  //   });
  // }
  // void changePlanetNameLeft(){
  //   widget.index--;
  //   if(widget.index < 0){
  //     widget.index = 2;
  //   }
  //   setState(() {
  //
  //   });
  // }
}

class SwipeButton extends StatelessWidget{
  IconData iconOfButton ;
  Function onButtonPress ;
  SwipeButton({required this.iconOfButton, required this.onButtonPress});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        onButtonPress();
      },
      child: Icon(iconOfButton),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(10, 100),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white
      ),
    );
  }
}