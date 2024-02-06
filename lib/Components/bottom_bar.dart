import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';
import 'package:sortifyd_app/Screens/user_profile.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton.small(
                elevation: 0,
                backgroundColor: Colors.white,
                foregroundColor: kbuttonColorPlain,
                child: Icon(Icons.list),
                onPressed: () {},
              ),
              FloatingActionButton.small(
                elevation: 0,
                backgroundColor: Colors.white,
                foregroundColor: kbuttonColorPlain,
                child: Icon(Icons.calendar_month),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.large(
                  shape: CircleBorder(),
                  elevation: 0,
                  backgroundColor: const Color.fromARGB(255, 255, 193, 59),
                  foregroundColor: Colors.black,
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
              FloatingActionButton.small(
                elevation: 0,
                backgroundColor: Colors.white,
                foregroundColor: kbuttonColorPlain,
                child: Icon(Icons.search),
                onPressed: () {},
              ),
              FloatingActionButton.small(
                elevation: 0,
                backgroundColor: Colors.white,
                foregroundColor: kbuttonColorPlain,
                child: Icon(Icons.person_2_outlined),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const UserProfile(
                            title: 'Account',
                          )));
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
