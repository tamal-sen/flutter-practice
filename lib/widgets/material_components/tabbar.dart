// https://api.flutter.dev/flutter/material/TabBar-class.html

import 'package:flutter/material.dart';

class MyTabBarWithAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar with AppBar'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.wifi_calling_outlined)),
              Tab(icon: Icon(Icons.web_sharp)),
              Tab(icon: Icon(Icons.view_sidebar)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.wifi_calling_outlined)),
              Tab(icon: Icon(Icons.web_sharp)),
              Tab(icon: Icon(Icons.view_sidebar)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
