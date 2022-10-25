import 'package:fitness_flutter/components/user_photo.dart';
import 'package:fitness_flutter/pages/onboard_screen.dart';
import 'package:flutter/material.dart';

import '../components/settings_button.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OnboardPage()));
        },
        label: const Text('Çıkış'),
        icon: const Icon(Icons.logout),
        backgroundColor: Color(0xffe95b0c),
      ),
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Color(0xffe95b0c),
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(130),
                      bottomRight: Radius.circular(130))),
              child: Center(
                  child: Container(
                child: UserPhoto(),
                height: 150,
                width: 150,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfileButton(
                    title: "Settings",
                    page: OnboardPage(),
                    icon: Icon(Icons.settings,color: Colors.white,),
                  ),
                  ProfileButton(
                    title: "Saved Workouts",
                    page: OnboardPage(),
                    icon: Icon(Icons.bookmark,color: Colors.white,),
                  ),
                  ProfileButton(
                    title: "About Us",
                    page: OnboardPage(),
                    icon: Icon(Icons.info,color: Colors.white,),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
