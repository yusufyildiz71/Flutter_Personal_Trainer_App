import 'package:fitness_flutter/components/Section_horizantal.dart';
import 'package:fitness_flutter/components/daily_tip.dart';
import 'package:fitness_flutter/components/favorite.dart';
import 'package:fitness_flutter/components/header.dart';
import 'package:fitness_flutter/components/image_card_with_basic_footer.dart';
import 'package:fitness_flutter/components/image_card_with_internal.dart';
import 'package:fitness_flutter/components/main_card_programs.dart';
import 'package:fitness_flutter/components/user_photo.dart';
import 'package:fitness_flutter/components/user_tip.dart';
import 'package:fitness_flutter/models/exercise.dart';
import 'package:fitness_flutter/pages/activity_detail.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/inclineBenchPress.jpg',
      title: 'Incline Bench Press',
      time: '5 min',
      difficult: 'Low',
    ),
    Exercise(
      image: 'assets/images/lateralRaise.jpg',
      title: 'Lateral Raise',
      time: '10 min',
      difficult: 'Medium',
    ),
    Exercise(
      image: 'assets/images/squad.jpg',
      title: 'Squad',
      time: '25 min',
      difficult: 'High',
    )
  ];

  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    exercises.forEach((exercise) {
      Widget element = Container(
        margin: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetail(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                Header(
                  'News',
                  rightSide: Row(
                    children: [
                      UserPhoto(),
                      Favorite(),
                    ],
                  ),
                ),
                // MainCardPrograms(), // MainCard

                SectionHorizantal(
                  title: 'Highlights (Öne Çıkanlar)',
                  horizontalList: <Widget>[
                    ImageCardWithInternal(
                      image: 'assets/images/chest.jpg',
                      title: 'Chest \nWorkout',
                      duration: '7 min',
                    ),
                    ImageCardWithInternal(
                      image: 'assets/images/shoulder.jpg',
                      title: 'Shoulder \nWorkout',
                      duration: '7 min',
                    ),
                    ImageCardWithInternal(
                      image: 'assets/images/abs.jpg',
                      title: 'ABS \nWorkout',
                      duration: '7 min',
                    ),
                  ],
                ),
                SectionHorizantal(
                  title: 'Past Videos (Geçmiş videolar)',
                  horizontalList: this.generateList(context),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                  ),
                  child: Column(
                    children: <Widget>[
                      SectionHorizantal(
                        title: 'Advices (Tavsiyeler)',
                        horizontalList: <Widget>[
                          DailyTip(),
                          DailyTip(),
                          DailyTip(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
