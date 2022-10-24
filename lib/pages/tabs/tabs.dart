import 'package:fitness_flutter/pages/tabs/Advice.dart';
import 'package:flutter/material.dart';
import 'package:fitness_flutter/pages/tabs/Workout.dart';
import 'package:fitness_flutter/pages/tabs/Home.dart';
import 'package:fitness_flutter/pages/tabs/Records.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: TabBarView(
          children: <Widget>[
            Home(),
            Workout(),
            Recorded(),
            Advices(),
          ],
        ),
        bottomNavigationBar: TabBar(
          padding: EdgeInsets.all(10),
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home, size: 30.0),
            ),
            Tab(
              icon: Icon(Icons.fitness_center, size: 30.0),
            ),
            Tab(
              icon: Icon(Icons.bookmark, size: 30.0),
            ),
            Tab(
              icon: Icon(Icons.note_alt, size: 30.0),
            ),
          ],
          labelPadding: EdgeInsets.all(5.0),
          labelColor: Color(0xffe95b0c),
          unselectedLabelColor: Colors.black,
          indicatorWeight: 0.01,
        ),
      ),
    );
  }
}