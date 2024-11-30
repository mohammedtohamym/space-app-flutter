import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:space_app/explore_screen_widgets/exploere_body.dart';
import 'package:space_app/explore_screen_widgets/planet_title.dart';
import 'package:space_app/explore_screen_widgets/planets.dart';

import 'explore_screen_widgets/navigation_button.dart';

class ExploreScreen extends StatelessWidget{
  static const String routeName = 'explore_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /* Back ground color*/
          Container(
            color: Color(0xff0E0E0E),
          ),
          /* screen components*/
          Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /* Navigation top bar */
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)
                      ),
                child: Container(
                  // color: Colors.red,
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
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ExplorerBody(),
              )
            ],
          )
        ],
      ),
    );
  }
}