import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/custom_app_bar.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/add_event.dart';
import 'package:sortifyd_app/Screens/add_items_screen.dart';
import 'package:sortifyd_app/Screens/home_Screen.dart';
import '../Components/pop_ups/bottom_popup.dart';
import '../Components/pop_ups/interests_popup.dart';
import '../Screens/home_money_add_account.dart';

class ViewInterestalert extends StatefulWidget {
  final String title;
  const ViewInterestalert({super.key, required this.title});

  @override
  State<ViewInterestalert> createState() => _ViewInterestalertState();
}

class _ViewInterestalertState extends State<ViewInterestalert>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);

    // Show the BottomPopup when the page is loaded for the first time
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
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return InterestsPopup(title: widget.title);
      },
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                _showPopup(context);
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
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            Expanded(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Implement the action for the "add account" button.
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          Event_Add(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(160, 60),
                  backgroundColor: korangecolor,
                ),
                icon: const Icon(
                  Icons.add_circle_outline,
                  size: 30,
                  color: Colors.black54,
                ),
                label: const Text(
                  "Add Recipes",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
