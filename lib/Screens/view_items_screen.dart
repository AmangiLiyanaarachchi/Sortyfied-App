import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/custom_app_bar.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/add_items_screen.dart';
import 'package:sortifyd_app/Screens/home_Screen.dart';
import '../Components/pop_ups/custom_pop_up.dart';
import 'home_money_add_account.dart';
import '../Components/pop_ups/special_offer.dart';

class ViewItemsScreen extends StatefulWidget {
  final String title;
  final String previousScreen;
  const ViewItemsScreen(
      {super.key, required this.title, required this.previousScreen});

  @override
  State<ViewItemsScreen> createState() => _ViewItemsScreenState();
}

class _ViewItemsScreenState extends State<ViewItemsScreen>
    with WidgetsBindingObserver {
  String customVariable = "";
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    if (widget.title == "Banking") {
      customVariable =
          "Have ready access to your financial account credentials and other information.";
    } else if (widget.title == "Airline") {
      customVariable = "Airline related text here";
    } else {
      customVariable = "Default text for other titles";
    }
    // Show the CustomPopupDialog when the page is loaded for the first time
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
    debugPrint('hello $customVariable');
    showDialog(
      context: context,
      builder: (context) => CustomPopUpDialog(
        title: widget.title,
        text: customVariable,
      ), // Display the custom pop-up dialog
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.title,
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
      body: const Center(),
      bottomNavigationBar: Container(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  _showPopup(
                      context); // Show the custom pop-up dialog when the bulb button is pressed
                },
                iconSize: 35,
                icon: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Colors.white.withOpacity(0.3),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.lightbulb_outline,
                      color: kprimaryColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    if (widget.previousScreen == 'Home & Money') {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              HomeMoneyAddAccount(title: widget.title),
                        ),
                      );
                    } else if (widget.previousScreen == 'Travel') {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AddItemsScreen(title: widget.title),
                        ),
                      );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Add Account",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Use primary color for the text
                        ),
                      ),
                      SizedBox(width: 25),
                      Icon(
                        Icons.add_circle_outline,
                        size: 30,
                        color: kprimaryColor, // Use primary color for the icon
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
