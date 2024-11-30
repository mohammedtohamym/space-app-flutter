import 'package:flutter/material.dart';
import 'package:space_app/plant_screen.dart';
import '../exploer_screen.dart';

class PlanetNavigtionButton extends StatefulWidget{

  List<String> planets ;
  int index  ;

PlanetNavigtionButton({required this.planets, required this.index,});

 @override
  State<StatefulWidget> createState() {
    return _PlanetNavigationButtonState();
  }
}

class _PlanetNavigationButtonState extends State<PlanetNavigtionButton>{

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
      // color: Colors.pink,
      child:
      /* Navigation to selected planet screen*/
      ElevatedButton(
        onPressed: (){
          Navigator.pushNamed(
              context, PlanetScreen.routeName,
          arguments:  widget.index);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
          ),
        ),
        /* Text: Explore selected planet text on button */
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
          child:
          Row(
            children: [
              Text('Explore ${widget.planets[widget.index]}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              Expanded(child: Container()),
              Icon(Icons.arrow_forward_rounded)
            ],
          ),
        ),
      ),
    );
  }


}