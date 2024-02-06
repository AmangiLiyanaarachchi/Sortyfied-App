import 'package:flutter/material.dart';
import 'package:sortifyd_app/Screens/view_interest_alert.dart';
import 'package:sortifyd_app/Screens/view_items_screen.dart';

import '../Constant/style_const.dart';
import 'add_items_screen.dart';
import 'home_Screen.dart';

class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        title: Center(child: Text('Interests', style: kboldTitle)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Perform your desired action here
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Perform your desired action here
              print('Left button pressed!');
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5
        ),
          child: Column(
            children: [
            for(int i=1; i<6;i++)
              InkWell(
                onTap: () {
                  // Implement the action when the plus icon is clicked.
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewInterestalert(
                        title: "Header Recipes",
                      ),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.symmetric(vertical: 12),
                  // padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F7FB),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius:BorderRadius.circular(40),
                        child: Image.asset("assets/images/interests$i.png",
                          height: 40,
                          width: 40,
                        ),

                      ),
                      Padding(padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Recipes",style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                            SizedBox(height: 8),
                          ],),
                      ),
                      Spacer(),
                      Column(

                        children: [
                          Text("0",style: TextStyle(
                            fontSize: 20,
                            // color: Color(0xFF03fc6b),
                              fontWeight: FontWeight.bold,
                          ),
                          ),


                        ],

                      ),

                      SizedBox(height: 6,width: 20,),
                      Container(
                        width: 28,
                        height: 28,
                        // decoration: BoxDecoration(
                        //     color: Color(0xFF333634),
                        //     borderRadius: BorderRadius.circular(20)
                        // ),
                        child: const Icon(
                          Icons.add_circle_rounded,
                          size: 28,
                          color: kprimaryColor,
                        ),

                      ),

                    ],
                  ),
                ),
              ),
          ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [BottomNavigationBarItem(icon: Icon(Icons.list),label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: 'Event'),
          BottomNavigationBarItem(icon: const Icon(
            Icons.add_circle_rounded,
            size: 40,
            color: kprimaryColor,
          ),label: 'Add Button'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
        ],),
    );
  }
}
