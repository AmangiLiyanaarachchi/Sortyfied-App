// ignore_for_file: prefer_final_fields, prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import '../Constant/style_const.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Map<String, dynamic>> _pages = [
    {
      'image': 'assets/onbordingScreen/figure_2.png',
      'text1': 'Involve Everyone',
      'text2': 'Get things done',
    },
    {
      'image': 'assets/onbordingScreen/figure_3.png',
      'text1': 'Share a Calendar.',
      'text2': 'Plan more time with the family.',
    },
    {
      'image': 'assets/onbordingScreen/figure_5.png',
      'text1': "It's your safe place.",
      'text2': 'Save everything important.',
    },
    {
      'image': 'assets/onbordingScreen/figure_4.png',
      'text1': "We'll remind you.",
      'text2': 'You focus on the now.',
    },
    {
      'image': 'assets/onbordingScreen/figure_1.png',
      'text1': 'Relax.',
      'text2': "We'll help you get sortifyd.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemCount: _pages.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildPage(index);
                },
              ),
            ),
            buildIndicator(),
            buildNextButton(),
          ],
        ),
      ),
    );
  }

  Widget buildPage(int index) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Color.fromARGB(128, 248, 205, 205),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              _pages[index]['image'],
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 30),
          Text(
            _pages[index]['text1'],
            style: TextStyle(fontSize: 30, color: konboardingScreenTitleColor),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Text(
              _pages[index]['text2'],
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildIndicator() {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _pages.map((Map<String, dynamic> page) {
          int index = _pages.indexOf(page);
          return Container(
            width: 8,
            height: 8,
            margin: EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == index ? kindicatorColor : Colors.grey,
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildNextButton() {
    return Padding(
      padding: EdgeInsets.fromLTRB(25, 25, 25, 45),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            if (_currentPage < _pages.length - 1) {
              _pageController.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.ease,
              );
            } else {
              // Navigator.pushNamed(context, '/login');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            }
          },
          child: Text(
            _currentPage < _pages.length - 1 ? 'Next' : 'Get Started',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            primary: kNextButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
