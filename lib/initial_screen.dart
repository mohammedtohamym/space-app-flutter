import 'package:flutter/material.dart';
import 'package:space_app/exploer_screen.dart';

class InitialScreen extends StatelessWidget{
  static const String routName = 'initial_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              color: Color(0xff0E0E0E),
            ),
            Image.asset(
              'assets/images/48e3ac1944450fcae09e68a9ccd37c17 1.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Explore\nThe\nUniverse',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, ExploreScreen.routeName);
                  },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
                      child: Row(
                        children: [
                          Text('Explore',
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}