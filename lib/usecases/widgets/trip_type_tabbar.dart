import 'package:flutter/material.dart';

class TripTypeTabBar extends StatelessWidget {
  final int index;

  const TripTypeTabBar({this.index});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: index ?? 0,
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxHeight: 44.0),
            child: Material(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xff148cd0),
              child: TabBar(
                labelColor: Color(0xff0069b1),
                unselectedLabelColor: Colors.white,
                unselectedLabelStyle: TextStyle(
                  // fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Poppins',
                ),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
                tabs: [
                  Tab(text: 'ONE WAY'),
                  // Tab(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text('DAC'), Icon(Icons.airplanemode_on),Text('LHR')],),),
                  Tab(text: 'ROUND TRIP'),
                  Tab(text: 'MULTI CITY'),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(
                  child: Text("Content for one-way goes here"),
                ),
                Center(
                  child: Text("Content for round trip goes here"),
                ),
                Center(
                  child: Text("Content for multi city goes here"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class TripTypeTabBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar:  TabBar(
//             labelColor: Colors.blue,
//             unselectedLabelColor: Colors.white,
//             unselectedLabelStyle: TextStyle(
//               // fontSize: 16,
//               fontWeight: FontWeight.normal,
//             ),
//             indicator: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5), color: Colors.white),
//             labelStyle: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,

//             ),
//             tabs: [
//               Tab(text: 'ONE WAY'),
//               Tab(text: 'ROUND TRIP'),
//               Tab(text: 'MULTI CITY'),
//             ],

//         ),
//         body: TabBarView(
//           children: [
//             Icon(Icons.directions_car),
//             Icon(Icons.directions_transit),
//             Icon(Icons.directions_bike),
//           ],
//         ),
//       ),
//     );
//   }
// }
