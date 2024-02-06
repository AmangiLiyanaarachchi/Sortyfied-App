import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sortifyd_app/Components/cards/add_items_card.dart';
import 'package:sortifyd_app/Components/custom_app_bar.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/home_Screen.dart';
import 'package:sortifyd_app/providers/item_subsection_provider.dart';

class HomeAndMoneyScreen extends StatefulWidget {
  const HomeAndMoneyScreen({super.key});

  @override
  State<HomeAndMoneyScreen> createState() => _HomeAndMoneyScreen();
}

class _HomeAndMoneyScreen extends State<HomeAndMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    final subsectionDataProvider = Provider.of<SubsectionDataProvider>(context);
    subsectionDataProvider.fetchSubsectionData();
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home & Money',
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
          padding: const EdgeInsets.all(0),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AddItemsCard(
                headerIcon: Icons.account_balance,
                headerText: 'Financial accounts',
                subsections: [
                  'Banking',
                  'Investments/Retirement',
                  'Loans/Mortgages',
                  'Other financial accounts',
                ],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.payment,
                headerText: 'Payment methods',
                subsections: [
                  'Credit/Debit cards',
                  'Other payment accounts',
                ],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.description,
                headerText: 'Property',
                subsections: [
                  'Primary home (owned)',
                  'Property (rented for own use)',
                  'Vacation home',
                  'Investment/Rental property',
                ],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Auto',
                subsections: [
                  'Vehicles',
                  'Maintenance',
                ],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Other assets',
                subsections: [
                  'Jewelary',
                  'Art and collectibles',
                  'Computer and electronics',
                  'Furniture',
                  'Others',
                ],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Insurance',
                subsections: [
                  'Homeowners/Renters insurance',
                  'Auto insurance',
                  'Life insurance',
                  'Health insurance',
                  'Umbrella insurance',
                ],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Taxes',
                subsections: [
                  'Past returns',
                  'Returns to be filled',
                ],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Services/Other accounts',
                subsections: [],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Other attachments',
                subsections: [],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
              SizedBox(
                height: 15.0,
              ),
              AddItemsCard(
                headerIcon: Icons.card_travel,
                headerText: 'Lists',
                subsections: [],
                itemCount: 0,
                iconColor: Colors.blue,
                currentScreen: 'Home & Money',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
