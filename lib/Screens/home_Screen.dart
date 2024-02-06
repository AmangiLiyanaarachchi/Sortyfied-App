// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/bottom_bar.dart';
import 'package:sortifyd_app/Components/lists/first_list.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/travel_options_screen.dart';
import 'package:sortifyd_app/Screens/home_money_option_screen.dart';
import 'package:sortifyd_app/Components/pop_ups/special_offer.dart';

import '../Components/lists/fifth_list.dart';
import '../Components/lists/forth_list.dart';
import '../Components/lists/second_list.dart';
import '../Components/lists/sixth_list.dart';
import '../Components/lists/third_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);

    // Show the SpecialOffer popup when the HomeScreen is loaded for the first time
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _showPopup(context);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SpecialOffer();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kbackgroundColor,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Sortifyd",
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        //menu
        leading: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 5.0 * kHeight / height,
              horizontal: 10.0 * kWidth / width),
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 5.0 * kHeight / height,
                horizontal: 10.0 * kWidth / width),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //notifications
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
                //chat
                IconButton(
                  icon: const Icon(Icons.chat),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: 5.0 * kHeight / height,
              horizontal: 10.0 * kWidth / width),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Good Morning,",
                  style: TextStyle(
                    color: kbuttonColorPlain,
                    fontSize: 12.0,
                  ),
                ),
                const Text(
                  "Amy",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const FirstRow(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Plan",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  "Your daily schedule, notes and priorities",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.0,
                  ),
                ),
                const SecondRow(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Organize",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  "Records, files, passwords, photos and more",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.0,
                  ),
                ),
                const ThirdRow(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Involve",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  "Family and other household members ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.0,
                  ),
                ),
                const ForthRow(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Get Inspired",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Text(
                  "Tips, tricks and use cases",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12.0,
                  ),
                ),
                const FifthRow(),
                const SizedBox(
                  height: 20,
                ),
                const SixthRow(),
                const SizedBox(
                  height: 20,
                ),
                const FirstRow(),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TravelScreen(),
                      ),
                    );
                  },
                  textColor: Colors.black,
                  child: const Text(
                    'Travel',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeAndMoneyScreen(),
                      ),
                    );
                  },
                  textColor: Colors.black,
                  child: const Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
