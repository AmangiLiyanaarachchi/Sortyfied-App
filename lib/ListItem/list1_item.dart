import 'package:flutter/material.dart';

class List1{
  final String title;
  final String image;

  const List1({required this.title, required this.image});
}

var Dummy_List1 = const[
  List1(title: "Choose a plan that\nbest fits your needs", image: "Start your FREE trial now"),
  List1(title: "View local weather and updates", image: "Pull down to refresh and/or\nallow location access"),
  List1(title: "Contacts", image: "image"),
  List1(title: "Education\n& work", image: "image"),
];
