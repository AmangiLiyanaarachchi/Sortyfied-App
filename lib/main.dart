// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:sortifyd_app/Screens/home_Screen.dart';
import 'package:provider/provider.dart';
import 'package:sortifyd_app/Screens/onboarding_screen.dart';
import 'package:sortifyd_app/providers/item_subsection_provider.dart';

import 'Screens/home_Screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SubsectionDataProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: OnboardingScreen(),
    );
  }
}
