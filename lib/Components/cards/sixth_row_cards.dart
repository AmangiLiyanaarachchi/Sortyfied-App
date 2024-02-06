import 'package:flutter/material.dart';

class SixthRowCards extends StatelessWidget {
  const SixthRowCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.16,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.16,
                height: MediaQuery.of(context).size.width*0.16,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 32.0,
                        right: 32.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tittle"),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text("Tittle"),
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
              Text("No arguments here to", style: TextStyle(
                fontSize: 11
              ),),
            ],
          ),
        ),
      ],
    );
  }
}
