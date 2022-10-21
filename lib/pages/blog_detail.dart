import 'package:fitness_flutter/models/blog.dart';
import 'package:flutter/material.dart';

class BlogDetail extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  BlogDetail({
    @required this.image,
    @required this.title,
    @required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 370,
                  child: Image.asset(
                    this.image,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 20,
                  child: GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        this.title,
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10.0,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(11)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              this.subtitle,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
