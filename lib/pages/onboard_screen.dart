import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';

import 'tabs/tabs.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoard(
        pageController: _pageController,
        // Either Provide onSkip Callback or skipButton Widget to handle skip state
        onSkip: () {
          // print('skipped');
        },
        // Either Provide onDone Callback or nextButton Widget to handle done state
        onDone: () {
          // print('done tapped');
        },
        onBoardData: onBoardData,
        titleStyles: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.15,
        ),
        descriptionStyles: TextStyle(
          fontSize: 16,
          color: Colors.brown.shade300,
        ),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 100,
          inactiveColor: Colors.black,
          activeColor: Colors.deepOrange,
          inactiveSize: Size(8, 8),
          activeSize: Size(12, 12),
        ),
        
        skipButton: TextButton(
          onPressed: () {
            
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Tabs()));
          },
          child: const Text(
            "Skip",
            style: TextStyle(color: Colors.black),
          ),
        ),
        
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return InkWell(
              onTap: () => state.isLastPage
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Tabs()))
                  : _onNextTap(state),
              child: Container(
                width: 230,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.black),
                child: Text(
                  state.isLastPage ? "Done" : "Next",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }
}

final List<OnBoardModel> onBoardData = [
  const OnBoardModel(
    title: "GYM Title 1",
    description: "DescriptionDescriptionDescriptionDescription",
    imgUrl: "assets/images/image006.jpg",
  ),
  const OnBoardModel(
    title: "GYM Title 2",
    description:
        "DescriptionDescriptionDescriptionDescription",
    imgUrl: 'assets/images/image003.jpg',
  ),
  const OnBoardModel(
    title: "GYM Title 3",
    description: "DescriptionDescriptionDescriptionDescription",
    imgUrl: 'assets/images/chest.jpg',
  ),
];
