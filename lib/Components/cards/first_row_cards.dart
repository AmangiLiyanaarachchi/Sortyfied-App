import 'package:flutter/material.dart';

class FirstRowCards extends StatelessWidget {
  final String title;
  final String image;

  FirstRowCards(
      this.title, this.image
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.4,
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12
                        ),),
                        SizedBox(height: 20,),
                        Text(image,
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 12
                          ),),
                      ],
                    ),
                  ),
                  // Expanded(
                  //   child: Hero(
                  //     child: Image.asset(
                  //       'asset/illustrations/${course.illustration}',
                  //       fit: BoxFit.cover,
                  //     ),
                  //     tag: course.illustration,
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(width: 10,),
          ],
        ),
      ],
    );
  }
}
