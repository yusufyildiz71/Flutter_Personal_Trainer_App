import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:fitness_flutter/components/Header.dart';
import 'package:fitness_flutter/components/Section_vertical.dart';
import 'package:flutter/material.dart';

import '../components/Section_horizantal.dart';
import '../components/daily_tip.dart';
import '../components/favorite.dart';
import '../components/image_card_with_basic_footer.dart';
import '../models/exercise.dart';
import '../pages/activity_detail.dart';

class Advices extends StatelessWidget {
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
                flexibleSpace: Header('Advices', rightSide: Text("")),
              ),
              body: Container(
                child: SingleChildScrollView(
                    child: SectionVertical(
                  title: '',
                  horizontalList: <Widget>[
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DailyTip(),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DailyTip(),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DailyTip(),
                    )),
                  ],
                )),
              )),
        ),
      ),
    );
  }
}
