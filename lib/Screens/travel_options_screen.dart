import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sortifyd_app/Components/cards/add_items_card.dart';
import 'package:sortifyd_app/Components/custom_app_bar.dart';
import 'package:sortifyd_app/Screens/home_Screen.dart';
import 'package:sortifyd_app/providers/item_subsection_provider.dart';
import 'package:sortifyd_app/Constant/style_const.dart';

class TravelScreen extends StatefulWidget {
  const TravelScreen({super.key});

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  @override
  Widget build(BuildContext context) {
    final subsectionDataProvider = Provider.of<SubsectionDataProvider>(context);
    subsectionDataProvider.fetchSubsectionData();
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Travel',
        showHomeIcon: true,
        onHomeIconPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Loyalty Programs',
                subsections: [
                  'Airline',
                  'Hotel',
                  'Car Rental',
                  'Railway',
                  'Other',
                ],
                itemCount: 0,
                iconColor: kprimaryColor,
                currentScreen: 'Travel',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Travel documents',
                subsections: [
                  'Passport',
                  'Visa',
                  'Other travel document',
                ],
                itemCount: 0,
                iconColor: kprimaryColor,
                currentScreen: 'Travel',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Travel dates and plans',
                subsections: [],
                itemCount: 0,
                iconColor: kprimaryColor,
                currentScreen: 'Travel',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Services/Other accounts',
                subsections: [],
                itemCount: 0,
                iconColor: kprimaryColor,
                currentScreen: 'Travel',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Other attachments',
                subsections: [],
                itemCount: 0,
                iconColor: kprimaryColor,
                currentScreen: 'Travel',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Lists',
                subsections: [],
                itemCount: 0,
                iconColor: kprimaryColor,
                currentScreen: 'Travel',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
