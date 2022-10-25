import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  final String title;
  final Widget page;
  final Widget icon;
  ProfileButton({this.title, this.page,this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
        child: Container(
          width: 330,
          height: 90,
          alignment: Alignment.center,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 10.0,
              offset: Offset(2.0, 2.0),
            ),
          ], borderRadius: BorderRadius.circular(32), color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              this.icon,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  this.title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
