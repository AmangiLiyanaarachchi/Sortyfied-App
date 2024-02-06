import 'package:flutter/material.dart';

class SecondRowCards extends StatelessWidget {
  const SecondRowCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.8,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Today", style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.left,),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        child: const Center(child: Padding(
                          padding: EdgeInsets.only(top: 50.0),
                          child: Column(
                            children: [
                              Text("Your events and schedule tasks \nappear here", textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 20,),
                              Text("Looks like you're caught up for now!", style: TextStyle(
                                color: Colors.black38
                              ),),
                              ],
                          ),
                        ))),
                    SizedBox(height: 50,),
                    Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        alignment: Alignment.bottomRight,
                        child: Text("Add Event", textAlign: TextAlign.right, style: TextStyle(color: Colors.amber),))

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
      ],
    );
  }
}
