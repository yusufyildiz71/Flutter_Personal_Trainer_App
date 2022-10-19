import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'image_card_with_internal.dart';

class SliderCards extends StatelessWidget {
  final List<Widget> horizontalList;
  final String title;
  SliderCards({this.title, this.horizontalList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 250,
            margin: EdgeInsets.only(top: 35.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: [
                    SectionTitle((this.title != null) ? this.title : ''),
                    Expanded(
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return ImageCardWithInternal(
                            image: 'assets/images/chest.jpg',
                            title: 'Chest \nWorkout',
                            duration: '7 min',
                          );
                        },
                        autoplay: true,
                        itemCount: 3,
                        itemWidth: 400.0,
                        itemHeight: 400.0,
                        layout: SwiperLayout.DEFAULT,
                        pagination: SwiperPagination(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                          builder: DotSwiperPaginationBuilder(
                              color: Colors.white,
                              activeColor: Colors.deepOrangeAccent,
                              size: 6.0,
                              activeSize: 9.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String _text;

  SectionTitle(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          this._text,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
