import 'package:flutter/material.dart';

class PlanetSwipe extends StatefulWidget{
  int index;



  PlanetSwipe({required this.index});

  @override
  State<StatefulWidget> createState() {
    return _PlanetSwipeState();
  }
}

class _PlanetSwipeState extends State<PlanetSwipe>{

  List<Widget> planets = [
    Container(
      // color: Colors.red,
      child: Image.asset('assets/images/earth.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      // color: Colors.red,
      child: Image.asset('assets/images/saturn.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      // color: Colors.red,
      child: Image.asset('assets/images/earth.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      // color: Colors.red,
      child: Image.asset('assets/images/saturn.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      // color: Colors.red,
      child: Image.asset('assets/images/earth.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      // color: Colors.red,
      child: Image.asset('assets/images/saturn.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      // color: Colors.red,
      child: Image.asset('assets/images/earth.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      // color: Colors.red,
      child: Image.asset('assets/images/saturn.png',
        fit: BoxFit.cover,
      ),
    ),
    Container(
      child: GestureDetector(
        onTap: () {
          // planetValue = 0;
          // print('###############');
          // print(planetValue);
          // setState(() {
          //
          // });
        },
      ),
    ),
  ];

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView.builder(
            itemBuilder: (context, index)=> planets[widget.index],
          itemCount: 1,
          controller: _controller,
        )
    );
  }
  void onButtonPressed(int i){
    _controller.jumpToPage(i);
    setState(() {

    });
  }

}

//PageView(
//
//           controller: PageController(initialPage: widget.index,),
//
//           onPageChanged: (value) {
//             print(value);
//           },
//           children: [
//             Container(
//               // color: Colors.red,
//               child: Image.asset('assets/images/earth.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Container(
//               // color: Colors.red,
//               child: Image.asset('assets/images/saturn.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Container(
//               child: GestureDetector(
//                 onTap: () {
//                   planetValue = 0;
//                   print('###############');
//                   print(planetValue);
//                   setState(() {
//
//                   });
//                 },
//               ),
//             ),
//           ],
//         )