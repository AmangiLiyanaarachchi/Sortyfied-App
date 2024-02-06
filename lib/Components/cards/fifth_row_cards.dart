import 'package:flutter/material.dart';

class FifthRowCards extends StatelessWidget {
  final String title;
  final String image;
  final String subTitle;

  FifthRowCards(
      this.title, this.image, this.subTitle
      );
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.4,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.width*0.1,
                  width: MediaQuery.of(context).size.width*0.1,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 32.0,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.width*0.1,
                  width: MediaQuery.of(context).size.width*0.25,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title, style: TextStyle(fontSize: 12), maxLines: 2,),
                      Text(subTitle, style: TextStyle(fontSize: 10),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
