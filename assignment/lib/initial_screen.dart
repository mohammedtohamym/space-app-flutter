import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space_app/exploer_screen.dart';

class InitialScreen extends StatelessWidget{
  static const String routeName = 'initial_screen';

  // late List<List> dataList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            /* back ground color */
            Container(
              color: Color(0xff0E0E0E),
            ),
            /* back ground Image */
            Image.asset(
              'assets/images/48e3ac1944450fcae09e68a9ccd37c17 1.png',
              fit: BoxFit.cover,
            ),
            /* Explore The Universe Text */
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
            /* Explore Button */
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: ElevatedButton(
                    onPressed:
                        (){
                          Navigator.pushReplacementNamed(context, ExploreScreen.routeName);


                        },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 2),
                      /* Explore Text and arrow Icon */
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

  // void onButtonPress() async {
  //   PlanetData planetData = PlanetData();
  //   await planetData.loadData();
  //   dataList = planetData.dataList;
  //   print(planetData.dataList);
  //   Navigator.pushReplacementNamed(this.context, ExploreScreen.routeName,arguments: dataList);
  // }
}

// class PlanetData {
//   late List<List> dataList;
//
//   PlanetData() {
//     loadData();
//   }
//
//   loadData() async {
//     final rawData = await rootBundle.loadString('assets/data/solar.csv');
//     List<List<dynamic>> listData = CsvToListConverter().convert(rawData);
//     dataList = listData;
//     return (listData);
//   }
// }