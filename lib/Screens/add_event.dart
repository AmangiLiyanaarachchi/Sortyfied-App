import 'package:flutter/material.dart';
import 'package:sortifyd_app/Components/cards/add_event.dart';
import 'package:sortifyd_app/Screens/subscription_pac.dart';

import 'home_Screen.dart';

class Event_Add extends StatefulWidget {
  const Event_Add({super.key});

  @override
  State<Event_Add> createState() => _Event_AddState();
}

class _Event_AddState extends State<Event_Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
              ),

            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Add Event',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          SizedBox( width: 70,
            child: GestureDetector(
          child: Text("Save"),
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const Subscription_Add(),
                  ),

                );

              },
            )
            // child: Text(
            //   'Save',
            //   style: TextStyle(
            //     fontSize: 20,
            //     fontWeight: FontWeight.bold,
            //     color: Colors.black54,
            //   ),
            //
            // ),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/calender.png',
                      width: 80,
                      height: 80,
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Title',
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
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Location',
                              border: InputBorder.none,
                              contentPadding:
                              EdgeInsets.fromLTRB(25, 5, 15, 10),
                              hintStyle: TextStyle(
                                color: Colors.grey,
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
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 16, right: 16),
            child: ListView(
              children: [
                SizedBox(height: 10),
                Addevent(),
                SizedBox(height: 10),
                // OnlineAccessExplanation(),
                SizedBox(height: 10),
                // AddNotesCard(),
                SizedBox(height: 10),
                // AddAtachmentsCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
