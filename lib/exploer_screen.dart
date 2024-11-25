import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget{
  static const String routeName = 'explore_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xff0E0E0E),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)
                      ),
                child: Container(
                  color: Colors.red,
                  height: 200,
                  child: Stack(
                    // fit: StackFit.expand,
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/Rectangle_4.png',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [

                              Color(0x1A000000),
                              Color(0xff0E0E0E)
                            ],
                            begin: Alignment.topCenter,
                            end:  Alignment.bottomCenter,
                          )
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('Explore',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          Expanded(child: Container()),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('Which Planet\nWould you like to exploer?',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // color: Colors.red,
                  child: Image.asset('assets/images/earth.png',
                  fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 70,
                // color: Colors.orange,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: (){},
                          child: Icon(Icons.arrow_back,),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(10, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white
                        ),
                      ),
                      Text('Earth',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                        textAlign: TextAlign.left,
                      ),
                      ElevatedButton(
                        onPressed: (){},
                        child: Icon(Icons.arrow_forward,),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(10, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 120,
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
                // color: Colors.pink,
                child:ElevatedButton(onPressed: (){
                  Navigator.pushReplacementNamed(context, ExploreScreen.routeName);
                },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
                    child: Row(
                      children: [
                        Text('Explore Earth',
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}