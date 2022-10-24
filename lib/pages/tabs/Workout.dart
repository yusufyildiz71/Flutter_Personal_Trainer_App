import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:fitness_flutter/components/Header.dart';
import 'package:fitness_flutter/components/Section_vertical.dart';

import 'package:flutter/material.dart';

import '../../components/Section_horizantal.dart';
import '../../components/favorite.dart';
import '../../components/image_card_with_basic_footer.dart';
import '../../models/exercise.dart';
import '../activity_detail.dart';

class Workout extends StatelessWidget {
  TextEditingController textController = TextEditingController();
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
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                flexibleSpace: Header(
                  'Workout',
                  rightSide: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimSearchBar(
                        width: 200,
                        textController: textController,
                        onSuffixTap: () {}),
                  ),
                ),
              ),
              body: Container(
                child: SingleChildScrollView(
                  child: SectionVertical(
                    title: 'Categories',
                    horizontalList: this.generateList(context),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
