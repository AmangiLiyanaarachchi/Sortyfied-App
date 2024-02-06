import 'package:flutter/material.dart';

class Addevent extends StatefulWidget {
  const Addevent({super.key});

  @override
  State<Addevent> createState() => _AddeventState();
}

class _AddeventState extends State<Addevent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 250, 247, 247),
        borderRadius: BorderRadius.circular(20), // Set the border radius here
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Row(
           children: [
             Text("AllDay"),SizedBox(width:120),Text("ss"),
           ],
         ),


        ],
      ),

        );


  }
}

