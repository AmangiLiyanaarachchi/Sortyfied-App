import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/home_money_option_screen.dart';
import 'package:sortifyd_app/Screens/interest_option_screen.dart';
import 'package:sortifyd_app/Screens/login_screen.dart';
import 'package:sortifyd_app/Screens/travel_options_screen.dart';
import 'package:sortifyd_app/Screens/wellness%20Screens/wellness.dart';

class ThirdRowCards extends StatelessWidget {
  final String title;
  final String image;

  ThirdRowCards(this.title, this.image);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10 * screenWidth / kWidth,
          vertical: 5 * screenHeight / kHeight),
      child: GestureDetector(
        onTap: () {
          switch (title) {
            case 'Home\n& Money':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeAndMoneyScreen(),
                ),
              );
              break;
            case 'Travel':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TravelScreen(),
                ),
              );
              break;

            case 'Contacts':
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Interest(),
                ),
              );
              break;

            case 'Wellness':
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WellnessScreen()),
              );
              break;
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.pinkAccent,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
