import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/cards/add_attachments_card.dart';
import 'package:sortifyd_app/Components/cards/add_notes_card.dart';
import 'package:sortifyd_app/Components/custom_app_bar.dart';
import 'package:sortifyd_app/Screens/home_Screen.dart';
import 'package:sortifyd_app/Components/cards/add_account_details_card.dart';
import 'package:sortifyd_app/Components/cards/add_online_access_card.dart';

class HomeMoneyAddAccount extends StatefulWidget {
  final String title;

  const HomeMoneyAddAccount({Key? key, required this.title}) : super(key: key);

  @override
  State<HomeMoneyAddAccount> createState() => _HomeMoneyAddAccount();
}

class _HomeMoneyAddAccount extends State<HomeMoneyAddAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "Add Account",
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
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.grey,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white60,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/logo.jpg',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Institution name',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.fromLTRB(25, 10, 15, 5),
                            hintStyle: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Account name',
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.fromLTRB(25, 5, 15, 10),
                            hintStyle: TextStyle(
                              //color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 0, right: 0),
            child: ListView(
              children: [
                SizedBox(height: 10),
                AccountDetailsExpansion(),
                SizedBox(height: 10),
                OnlineAccessExplanation(),
                SizedBox(height: 10),
                AddNotesCard(),
                SizedBox(height: 10),
                AddAtachmentsCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
