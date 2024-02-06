import 'package:flutter/material.dart';
import 'package:sortifyd_app/Constant/style_const.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //list- categories title
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20 * screenWidth / kWidth),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lists - Categories',
                        style: kboldTitle,
                      ),
                      ImageIcon(
                        AssetImage('assets/icons/home.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20 * screenHeight / kHeight,
                ),
                //card list
                CategortListCard(
                  title: 'Home & Money',
                  count: '0',
                  image: 'home_image.jpeg',
                ),

                CategortListCard(
                  title: 'Travel',
                  count: '0',
                  image: 'travel.jpeg',
                ),
                CategortListCard(
                  title: 'Contacts',
                  count: '1',
                  image: 'contact.jpeg',
                ),
                CategortListCard(
                  title: 'Education & Work',
                  count: '0',
                  image: 'education.jpeg',
                ),
                CategortListCard(
                  title: 'Personal',
                  count: '0',
                  image: 'personal.jpeg',
                ),
                CategortListCard(
                  title: 'Interests',
                  count: '0',
                  image: 'interest.png',
                ),
                CategortListCard(
                  title: 'Wellness',
                  count: '0',
                  image: 'wellness.jpeg',
                ),
                CategortListCard(
                  title: 'Memories & Journal',
                  count: '0',
                  image: 'memory.png',
                ),
                CategortListCard(
                  title: 'Shopping',
                  count: '0',
                  image: 'shopping.jpeg',
                ),
                CategortListCard(
                  title: 'Other',
                  count: '0',
                  image: 'personal.jpeg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Single list card
// ignore: must_be_immutable
class CategortListCard extends StatelessWidget {
  CategortListCard({required this.title, required this.count, this.image = ''});
  String title;
  String count;
  String image;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10 * screenWidth / kWidth,
          vertical: 5 * screenHeight / kHeight),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 10 * screenWidth / kWidth,
            vertical: 10 * screenHeight / kHeight),
        color: kcardBackgroundColor,
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage('assets/$image'),
            ),
            SizedBox(
              width: 20 * screenWidth / kWidth,
            ),
            SizedBox(width: screenWidth * 0.6, child: Text(title)),
            Text(count),
            Spacer(
              flex: 1,
            ),
            Icon(
              Icons.add_circle_outline_sharp,
              color: korangecolor,
            )
          ],
        ),
      ),
    );
  }
}
