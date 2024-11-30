import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space_app/planet_screen_widgets/bavBarGradient.dart';
import 'package:space_app/plant_data_class.dart';
import 'package:csv/csv.dart';


class PlanetScreen extends StatelessWidget{
  static const String routeName = 'planet';



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
  List<List<String>> planetData = [
    [
      "Sun", "sun.png", "sun.glb", "The Sun: Our Solar System's Star",
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      "0", "0", "0", "695700", "1.989e30", "274", "6.09e12"
    ],
    [
      "Mercury", "mercury.png", "mercury.glb", "Mercury: The Closest Planet",
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      "57909227", "1407.6", "0.24", "2439.7", "3.301e23", "3.7", "7.48e7"
    ],
    [
      "Venus", "venus.png", "venus.glb", "Venus: Earth's Toxic Twin",
      "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
      "108209072", "5832.2", "0.62", "6051.8", "4.867e24", "8.87", "4.60e8"
    ],
    [
      "Earth", "earth.png", "earth.glb", "Earth: Our Blue Marble",
      "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      "149598026", "23.93", "1", "6371", "5.972e24", "9.81", "5.10e8"
    ],
    [
      "Mars", "mars.png", "mars.glb", "Mars: The Red Planet",
      "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      "227943824", "24.62", "1.88", "3389.5", "6.39e23", "3.71", "1.45e8"
    ],
    [
      "Jupiter", "jupiter.png", "jupiter.glb", "Jupiter: The Gas Giant",
      "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      "778547669", "9.92", "11.86", "69911", "1.898e27", "24.79", "6.21e15"
    ],
    [
      "Saturn", "saturn.png", "saturn.glb", "Saturn: The Ringed Planet",
      "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
      "1426666422", "10.66", "29.46", "58232", "5.683e26", "10.44", "4.27e15"
    ],
    [
      "Uranus", "uranus.png", "uranus.glb", "Uranus: The Tilted Planet",
      "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      "2870990000", "17.24", "84.01", "25362", "8.681e25", "8.69", "8.1e15"
    ],
    [
      "Neptune", "neptune.png", "neptune.glb", "Neptune: The Distant World",
      "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      "4498252900", "16.11", "164.8", "24622", "1.024e26", "11.15", "7.65e15"
    ]
  ];


  // late List<List> planetDataList ;
  // //
  // int index;
  // PlanetScreen ({this.index = 0}){
  //   useLoadData();
  // }
  // //
  //
  // useLoadData() async{
  //   await loadData();
  // }
  // loadData() async{
  //   final rawData = await rootBundle.loadString('assets/data/solar.csv');
  //   List<List<dynamic>> listData = CsvToListConverter().convert(rawData);
  //   planetDataList = listData;
  // }
  // Future<List<List>> planetData = PlanetData().loadData();
  // dynamic planetData = PlanetData().loadData(2,2);

  @override
  Widget build(BuildContext context) {

    int argIndex = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      body: Stack(
        children: [
          /* Background Color */
          Container(
            color: Color(0xff0E0E0E),
          ),

          Container(
            height: 900,
            // color: Colors.blue,
            child: Column(
              children: [
                NavBarGradient(text: planetData[argIndex][3],),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Container(width:6, height:611, color: Colors.red,),

                        /* Image */
                        Padding(
                          padding: const EdgeInsets.all(35.0),
                          child: Image.asset(imagePaths[argIndex]),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('About',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                // decoration: TextDecoration.underline,
                                decorationColor: Colors.white
                              ),),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(planetData[argIndex][4],                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    // decoration: TextDecoration.underline,
                                    decorationColor: Colors.white
                                ),),
                            ),

                            RowEntry(leading: 'Distance from sun (km):', data: planetData[argIndex][5]),
                            RowEntry(leading: 'Length of Day (hours):', data: planetData[argIndex][6]),
                            RowEntry(leading: 'Orbital Period (Earth years):', data: planetData[argIndex][7]),
                            RowEntry(leading: 'Radius (km):', data: planetData[argIndex][8]),
                            RowEntry(leading: 'Mass (kg):', data: planetData[argIndex][9]),
                            RowEntry(leading: 'Gravity (m/s²):', data: planetData[argIndex][10]),
                            RowEntry(leading: 'Surface Area (km²):', data: planetData[argIndex][11]),

                            // Text("${planetData.then((data){print(data);})}",),
                            // Text("${planetData.then((data){print(data);})}",),

                            // Text("${planetDataList[2][2]})}",),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}

class RowEntry extends StatelessWidget{
  String leading;
  String data;
  RowEntry({required this.leading, required this.data});
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(leading,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white
            ),),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                // decoration: TextDecoration.underline,
                decorationColor: Colors.white
            ),),
        ),

      ],
    );
  }
}